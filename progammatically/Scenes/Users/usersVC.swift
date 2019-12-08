//
//  ViewController.swift
//  progammatically
//
//  Created by bishoy wadie on 7/12/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//

import UIKit

class usersVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var presenter:usersVCpresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        presenter = usersVCpresenter(view: self)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

