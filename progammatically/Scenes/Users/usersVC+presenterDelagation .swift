//
//  usersVC+presenterDelagation .swift
//  progammatically
//
//  Created by bishoy wadie on 12/5/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//


import Foundation
import UIKit

extension usersVC:userView{
    
    func showIndicator() {
        let alert = UIAlertController(title: "Alert", message: "loading", preferredStyle: .actionSheet)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        //
    }
    
    func hideIndicator() {
        let alert = UIAlertController(title: "Alert", message: "Done", preferredStyle: .actionSheet)
        let alertAction  = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        //
    }

    func fetchDataSuccess() {
        print("data fetched successfully ")
        //
    }

    func showrror(error: String) {
        let alert = UIAlertController(title: "Alert", message: "loading", preferredStyle: .actionSheet)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        //
        //
    }
    
    
}
