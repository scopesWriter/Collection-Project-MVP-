//
//  usersCell.swift
//  progammatically
//
//  Created by bishoy wadie on 12/5/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//

import UIKit

protocol usersCellView {
    func name(name:String)
    func des(des:String)
    func address(address:String)
}

class usersCell: UITableViewCell ,usersCellView{
   
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var labe2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        // Initialization code
    }

    func name(name: String) {
        self.label1.text = name
    }
    
    func des(des: String) {
        self.labe2.text = des
    }
    
    func address(address: String) {
        self.label3.text = address
    }
    
}
