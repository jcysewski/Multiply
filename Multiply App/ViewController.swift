//
//  ViewController.swift
//  Multiply App
//
//  Created by jcysewski on 9/11/15.
//  Copyright (c) 2015 jcysewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var segView: UISegmentedControl!
    
    var answer : Int!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func calcButtonTapped(sender: AnyObject)
    {
        var one : Int! = Int(textOne.text)!
        var two : Int! = Int(textTwo.text)!
        
        textTwo.resignFirstResponder() //dimisses the key board
        if segView.selectedSegmentIndex == 0
        {
            answer = one + two
        }
        if segView.selectedSegmentIndex == 1
        {
            answer = one - two
        }
        if segView.selectedSegmentIndex == 2
        {
            answer = one * two
        }
        if segView.selectedSegmentIndex == 3
        {
            answer = one / two
        }
        if answer % 2 == 0
        {
            myImage.image = UIImage(named: "waffle")
        }
        if answer == 64
        {
         myImage.image = UIImage(named: "yoshi")
        }
        if answer % 2 == 1
        {
            myImage.image = UIImage(named: "pika")
        }

        
        totalLabel.text = "\(answer)"
    }



}

