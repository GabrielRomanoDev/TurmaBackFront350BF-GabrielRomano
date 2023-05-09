//
//  Tela01ViewController.swift
//  NotificationCenterExercise
//
//  Created by Gabriel Luz Romano on 09/05/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    static let identifier:String = String(describing: Tela01ViewController.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupObserver()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        tableView.reloadData()
//        setupTableView()
//    }
    
    func setupTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    func setupObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateNameList), name: Notification.Name("recebeNome"), object: nil)
    }
    
    @objc func updateNameList(notification:NSNotification){
        
    }

}

extension Tela01ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(name: namesList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}

