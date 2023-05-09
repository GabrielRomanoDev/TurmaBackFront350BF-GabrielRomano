//
//  TableViewCell.swift
//  NotificationCenterExercise
//
//  Created by Gabriel Luz Romano on 09/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier:String = String(describing: TableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(name:String){
        nameLabel.text = name
    }
    
}
