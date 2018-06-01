//
//  Color.swift
//  iOS_18_Lab06
//
//  Created by Gianni Savini on 01/06/18.
//  Copyright © 2018 Gianni Savini. All rights reserved.
//

import UIKit

class Color: NSObject, NSCoding {
    
    var rosso: String
    var verde: String
    var blu: String
    
    init(rosso:String, blu:String, verde:String) {
        self.rosso = rosso
        self.verde = verde
        self.blu = blu
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(rosso, forKey: "rosso")
        aCoder.encode(verde, forKey: "verde")
        aCoder.encode(blu, forKey: "blu")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.rosso = aDecoder.decodeObject(forKey: "rosso") as! String
        self.verde = aDecoder.decodeObject(forKey: "verde") as! String
        self.blu = aDecoder.decodeObject(forKey: "blu") as! String
        super.init();
    }

}
