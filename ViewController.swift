//
//  ViewController.swift
//  PickerPracticeApp
//
//  Created by Filippos Katsilidis on 28/09/2016.
//  Copyright © 2016 FilKats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    var myArray = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var numbers: [String] = []
    
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    @IBOutlet weak var secondPicker: UIPickerView!
    
    @IBOutlet weak var thirdPicker: UIPickerView!
    
    @IBOutlet weak var fourthPicker: UIPickerView!
    
    @IBOutlet weak var myNumberLabel: UILabel!
    
    @IBOutlet weak var mySecondNumberLabel: UILabel!
    
    @IBOutlet weak var myThirdNumberLabel: UILabel!
    
    @IBOutlet weak var myFourthNumberLabel: UILabel!
    
    @IBOutlet weak var PFaFGLabel: UILabel!

    @IBOutlet weak var SingeULabel: UILabel!
    
    @IBOutlet weak var fristerLabel: UILabel!

    @IBOutlet weak var vestALabel: UILabel!
    
    var numbersPfaff = ["-19", "-18", "-17", "-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6"]
    
    var numbersGeneric = ["-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"]
    
    var numbersFrister = ["-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
    
    var numbersSinger = ["-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var numbersVesta = ["-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2"]

    var newNumbersPfaff = [String]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        numbersPfaff = numbersPfaff.reversed()
        numbersFrister = numbersFrister.reversed()
        numbersSinger = numbersSinger.reversed()
        numbersVesta = numbersVesta.reversed()
        
      
        PickerView.dataSource = self
        PickerView.delegate = self
        secondPicker.dataSource = self
        secondPicker.delegate = self
        thirdPicker.dataSource = self
        thirdPicker.delegate = self
        fourthPicker.dataSource = self
        fourthPicker.delegate = self
        
        
        
        PickerView.selectRow(6, inComponent: 0, animated: true)
        secondPicker.selectRow(16, inComponent: 0, animated: true)
        thirdPicker.selectRow(20, inComponent: 0, animated: true)
        fourthPicker.selectRow(2, inComponent: 0, animated: true)
        
        var  alphabet: [Any] = []
        
        var ReverseNumbersPfaff = [String]()
        
        ReverseNumbersPfaff = numbersPfaff.reversed()
        
        print (ReverseNumbersPfaff)
        
        let ReverseNumbersFrister = numbersFrister.reversed()
        
        print (ReverseNumbersFrister)
        
        let Abc:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        
        for a in Abc.characters.reversed() {
            
         newNumbersPfaff.append(String(a))
            
        }
        
        print ("AAAAAAAAAAAAAAAAAA")
        print (newNumbersPfaff)

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
        
        myNumberLabel.text = "\(numbersPfaff[row])"
        PFaFGLabel.text = "\(myArray[row])"
       
        
        
        } else {
        
            if pickerView == secondPicker {
                mySecondNumberLabel.text = "\(self.numbersFrister[row])"
                fristerLabel.text = "\(myArray[row])"
                
            } else {
                
                if pickerView == thirdPicker {
                    myThirdNumberLabel.text = "\(numbersSinger[row])"
                    SingeULabel.text = "\(myArray[row])"
                    
                } else {
                    
                    if pickerView == fourthPicker {
                        myFourthNumberLabel.text = "\(numbersVesta[row])"
                        vestALabel.text = "\(myArray[row])"
                        
                    }
                }
            }
            
        }
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if secondPicker == pickerView {
           
            return myArray[row]
        
        } else {

            if PickerView == pickerView {
            
            return myArray[row]
        
            } else {
                
                if thirdPicker == pickerView {
                    
                    return myArray[row]
                } else {
                    
                    if fourthPicker == pickerView {
                        
                        return myArray[row]
                    }
                }
             
                return ""
                
            }
}
}
    
    
    
    
    }
    
    
    

