//
//  usersVC+ tableView.swift
//  progammatically
//
//  Created by bishoy wadie on 12/5/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//

import UIKit

extension usersVC:UITableViewDelegate,UITableViewDataSource{
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerNib(cell: usersCell.self)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "usersCell", for: indexPath) as! usersCell
        presenter.configure(cell: cell, At: indexPath.item)
        return cell 
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getUserCount()
    }
 
}

extension UITableView{
    func registerNib<cell:UITableViewCell>(cell:cell.Type){
        let nibName = String(describing: cell)
        self.register(UINib(nibName: nibName, bundle:nil), forCellReuseIdentifier: nibName)
    }
    
}
