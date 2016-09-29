//
//  ViewController.swift
//  PickerPracticeApp
//
//  Created by Filippos Katsilidis on 28/09/2016.
//  Copyright © 2016 FilKats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    var myArray = ["E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D"]
    
    var numbers: [String] = []
    
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    @IBOutlet weak var secondPicker: UIPickerView!
    
    @IBOutlet weak var thirdPicker: UIPickerView!
    
    @IBOutlet weak var fourthPicker: UIPickerView!
    
    @IBOutlet weak var myNumberLabel: UILabel!
    
    @IBOutlet weak var mySecondNumberLabel: UILabel!
    
    @IBOutlet weak var PFaFGLabel: UILabel!

    @IBOutlet weak var fristerLabel: UILabel!



    override func viewDidLoad() {
        super.viewDidLoad()
        
        PickerView.dataSource = self
        PickerView.delegate = self
        secondPicker.dataSource = self
        secondPicker.delegate = self
        thirdPicker.dataSource = self
        thirdPicker.delegate = self
        fourthPicker.dataSource = self
        fourthPicker.delegate = self
        
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
        
        if pickerView == PickerView {
        
        myNumberLabel.text = "\(numbers[row])"
        PFaFGLabel.text = "\(myArray[row])"
        } else {
        
            if pickerView == secondPicker {
                mySecondNumberLabel.text = "\(numbers[row])"
                fristerLabel.text = "\(myArray[row])"
                
            }
            
        }
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if secondPicker == pickerView {
           
            return myArray[row]
        
        } else {

            if PickerView == pickerView {
            
            return myArray[row]
        
        }
            return ""
}
}
}
