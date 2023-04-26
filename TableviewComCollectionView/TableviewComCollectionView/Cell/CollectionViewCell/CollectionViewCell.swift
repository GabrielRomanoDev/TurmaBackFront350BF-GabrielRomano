//
//  CollectionViewCell.swift
//  TableviewComCollectionView
//
//  Created by Gabriel Luz Romano on 25/04/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var vehicleImage: UIImageView!
    
    static let identifier:String = String(describing: CollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCollectionCell(imageName: String){
        vehicleImage.image = UIImage(imageLiteralResourceName: imageName)
    }
    
}
