//
//  ViewController.swift
//  magic8ball
//
//  Created by Kelly Chang on 2017/12/13.
//  Copyright © 2017年 Kelly Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber1 : Int = 0
    let imageArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    
    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButton(_ sender: UIButton) {
       
        updateballImage()
    }
    
    func updateballImage(){
        randomNumber1 = Int(arc4random_uniform(5))
         magicBall.image = UIImage(named:imageArray[randomNumber1])
    
        
    }
    

}
