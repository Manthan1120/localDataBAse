//
//  ViewController.swift
//  localDataBAse
//
//  Created by R86 on 31/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFiled1: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    
    @IBOutlet var deleteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.createFile()
    }
    @IBAction func saveButtonAction(_ sender: Any) {
        
        if let x = textFiled1.text , let y = Int(x) {
            Sqlite.addData( id: y,name: textFiled2.text!)
        }
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
        if let x = textFiled1.text , let y = Int(x) {
            Sqlite.delteData(id: y, name: textFiled2.text!)
        }
        
    }
    @IBAction func showButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
   
}

