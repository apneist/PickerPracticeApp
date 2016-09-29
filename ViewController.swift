//
//  ViewController.swift
//  PickerPracticeApp
//
//  Created by Filippos Katsilidis on 28/09/2016.
//  Copyright © 2016 FilKats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    var myArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var numbers: [String] = []
    
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    @IBOutlet weak var myNumberLabel: UILabel!
    
    




    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        var  alphabet: [Any] = []
        

        
        let Abc:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

        print ("herroowwwwww")
        print (Abc.characters)
        
        for i in Abc.characters {
            
            print (i)
            alphabet.append(i)


        }
        
        print (alphabet)
        

        
        for number in 0...myArray.count {
            
            numbers.append(String(number))
        }
        
        print (numbers)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myNumberLabel.text = "\(numbers[row])"    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myArray[row]
    }
    
}

