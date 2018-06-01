//
//  ViewController.swift
//  iOS_18_Lab06
//
//  Created by Gianni Savini on 01/06/18.
//  Copyright © 2018 Gianni Savini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var third: UITextField!
    @IBOutlet weak var numberOfSave: UILabel!
    
    let doc = FileManager.default.urls(for: .documentDirectory, in:  .userDomainMask)[0].appendingPathComponent("colori.lista")
    
    var color: [Color] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveState(_ sender: Any) {
        let new = Color(rosso: first.text!,
                        blu: third.text!,
                        verde: second.text!)
        var listaSalvata : [Color]! = NSKeyedUnarchiver.unarchiveObject(withFile: doc.path) as? [Color]
        if(listaSalvata == nil) {
            listaSalvata = []
        }
        
        listaSalvata.append(new)
        NSKeyedArchiver.archiveRootObject(listaSalvata, toFile: doc.path)
    }
    
    
    
}

