//
//  ViewController.swift
//  ScrollView
//
//  Created by Tima on 2018-06-04.
//  Copyright © 2018 Tima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       scroller.isScrollEnabled = true
        scroller.contentSize = CGSize(width: 0, height: 1000)
    }
    @IBAction func handlePan(recognizer: UIPanGestureRecognizer) {

        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x, y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
}


