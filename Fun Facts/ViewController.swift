//
//  ViewController.swift
//  Fun Facts
//
//  Created by Christine Rose on 4/3/15.
//  Copyright (c) 2015 Christine Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var funFactButton: UIButton!  //!(BANG) denotes unwrapped optional
    /*@IBOutlet, tells computer it's outlet & matches it with a visual object*/
    @IBOutlet weak var funFactLabel: UILabel!
    
    let factBook = FactBook()  //calling instance of struct from FactBook file *****
    let colorWheel = ColorWheel() //calling instance of struct from ColorWheel file *****
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()  //DOT NOTATION to call other from above
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*@IBAction tells Interface Builderthat it's linked up with a button*/
    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor() //calls once so colors are in sync
        view.backgroundColor = randomColor //calls from above
        funFactButton.tintColor = randomColor //so colors are in sync
        funFactLabel.text = factBook.randomFact() //calls from struct code
    }

}


