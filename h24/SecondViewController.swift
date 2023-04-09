//
//  SecondViewController.swift
//  h24
//
//  Created by Kazimir on 6.04.23.
//

import UIKit

class SecondViewController: UIViewController {
    var dataTextB: String = "test"
    @IBOutlet var dataField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
    updateTextField()
    }
    
    private func updateTextField() {
        dataField.text = dataTextB//устаналиваем текст в текстфилд
    }
    
    
    
    
    @IBAction func showSceneAWithProp(_ sender: Any) {
        self.navigationController?.viewControllers.forEach{ oneScene in
            let sceneA = oneScene as? ViewController
            sceneA?.dataTextA = dataField.text ?? ""/// 
            self.navigationController?.popViewController(animated: true)
            
            
            
            
        }
            
            
            
       
    }
    
   

}
