//
//  ViewController.swift
//  TableView
//
//  Created by Gabriel Luz Romano on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }

    func configTableView(){
        //Configurar os Protocolos
        tableView.delegate = self
        tableView.dataSource = self
        //Registrar a Celula
        
    }

}


extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension ViewController:UITableViewDelegate{
    
}
