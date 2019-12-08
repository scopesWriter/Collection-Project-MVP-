//
//  usersVCPesenter.swift
//  progammatically
//
//  Created by bishoy wadie on 12/5/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//

import Foundation

protocol userView:class {
    func showIndicator()
    func hideIndicator()
    func fetchDataSuccess()
    func showrror(error:String)
}

class usersVCpresenter {
    
    private weak var view:userView?
    private let interactor = usersInteractor()
    private let users = user()
    
    
    init(view:userView) {
        self.view = view
    }
    
    func viewDidLoad(){
      getUser()
        
    }
    
    func getUserCount()->Int{
        return users.addressArray.count
    }
    
    func getUser(){
     //interactor
    }
    
    func configure(cell:usersCellView,At index:Int){
        let userName = users.nameArray[index]
        let des = users.desArray[index]
        let address = users.addressArray[index]
        cell.name(name: userName)
        cell.des(des: des)
        cell.address(address: address)
    }
    
   
}
