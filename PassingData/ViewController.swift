//
//  ViewController.swift
//  PassingData
//
//  Created by Mahmoud Waked on 9/19/20.
//  Copyright © 2020 BIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is SecondViewController
           {
               let vc = segue.destination as? SecondViewController
            vc?.text = textField.text ?? ""
           }
        
    }
    
    @IBAction func onSaveClick(_ sender: Any) {
        
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        // vc.text = textField.text ?? ""

        navigationController?.pushViewController(vc,  animated: true)
    }
    
}

