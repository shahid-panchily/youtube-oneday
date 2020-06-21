//
//  ViewController.swift
//  Youtube-OnedayBuild
//
//  Created by shahid panchily on 14/06/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 var model = Model()
    
    var anyValue = testModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        model.getVideos()
//        anyValue.getValues()
    }


}

