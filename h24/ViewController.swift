//
//  ViewController.swift
//  h24
//
//  Created by Kazimir on 6.04.23.
//

import UIKit

class ViewController: UIViewController {
    var dataTextA: String = "test data"
    @IBOutlet var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTextField()
    }
    private func updateTextField() {
        dataLabel.text = dataTextA
    }
    
    
    
    

    @IBAction func showSceneWithProp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sceneB = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        sceneB.dataTextB = dataLabel.text ?? ""///меняем текст в свойстве Б
        self.navigationController?.pushViewController(sceneB, animated: true)
        
    }
    
    
    
    
    

}

