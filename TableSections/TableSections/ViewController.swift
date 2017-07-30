//
//  ViewController.swift
//  TableSections
//
//  Created by vikram singh rajpoot on 30/07/17.
//  Copyright © 2017 vikram singh rajpoot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerCell()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func registerCell(){
        let nib1 = UINib(nibName: "TableViewCell1", bundle: nil)
        self.tableView.register(nib1, forCellReuseIdentifier: "cell1")
        
        let nib2 = UINib(nibName: "TableViewCell2", bundle: nil)
        self.tableView.register(nib2, forCellReuseIdentifier: "cell2")
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as? TableViewCell1
            return cell!
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableViewCell2
            return cell!
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableViewCell2
            return cell!
            
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = "Title" + String(section)
        return title
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        return 50
    }

    

}

