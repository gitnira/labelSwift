//
//  ViewController.swift
//  helloSwift
//
//  Created by nira on 2018/11/17.
//  Copyright © 2018年 nira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func yes(_ sender: Any) {
        myLabel.text = "Yes"
    }
    
    @IBAction func No(_ sender: Any) {
        myLabel.text = "No"
    }
    
    @IBOutlet weak var myLabel11: UILabel!
    @IBOutlet weak var myLabel12: UILabel!
    @IBOutlet weak var myLabel13: UILabel!
    @IBOutlet weak var myLabel21: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //単価と個数
        let tanka = 120;
        let kosu = 4;
        
        //ラベルに表示
        myLabel11.text = "単価\(tanka), \(kosu) 個"
        myLabel12.text = String(tanka*kosu)
        myLabel13.text = "金額" + myLabel12.text! + "円"
        
        myLabel21.text = "-1.5"
        
        guard let num = Double(myLabel21.text!) else {
            return
        }
    
    if num >= 0.0 {
    myLabel21.textColor = UIColor.black
    myLabel21.backgroundColor = UIColor.white
    } else{
    myLabel21.textColor = UIColor.white
    myLabel21.backgroundColor = UIColor.red
    }
        
    }


}

