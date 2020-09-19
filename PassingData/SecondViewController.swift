//
//  SecondViewController.swift
//  PassingData
//
//  Created by Mahmoud Waked on 9/19/20.
//  Copyright © 2020 BIM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelView.text = text
        
    }
    
    @IBAction func onBackClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
