//
//  ViewController.swift
//  Assignment3
//
//  Created by Tima on 2018-05-19.
//  Copyright © 2018 Tima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var drawView: drawView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetButton(_ sender: UIButton){
        drawView.path.removeAllPoints()
        drawView.layer.sublayers = nil
        drawView.setNeedsDisplay()
        
    }
}




        
                
        
                
        
                

    

