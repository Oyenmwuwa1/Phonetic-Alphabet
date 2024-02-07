//
//  ViewController.swift
//  oigiede_proj4
//
//  Created by Oyenmwuwa Igiede on 10/3/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var pilotWord: UILabel!
    
    var pilotDictionary: [String:String] = [:]// dictionary to be used
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userInput.delegate = self
        
    }
    
   
    
    // inherit system functon
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        userInput.resignFirstResponder()// make keyboard disapper
        if let input =  userInput.text{
            
            if input.count == 0 || input.count > 1 || input.uppercased()<"A"||input.uppercased()>"Z"{
                
                return true
            }else{ // right input}
                
                pilotWord.text = translate(letter: input)
            }
            
        }
        return true
    }
    // translation
    func translate (letter: String)-> String{
        var pw = ""
        switch letter.uppercased(){
        case "A": pw = "ALPHA"
        case "B": pw = "BRAVO"
        case "C": pw = "CHARLIE"
        case "D": pw = "DELTA"
        case "E": pw = "ECHO"
        case "F": pw = "FOXTROT"
        case "G": pw = "GOLF"
        case "H": pw = "HOTEL"
        case "I": pw = "INDIA"
        case "J": pw = "JULIET"
        case "K": pw = "KILO"
        case "L": pw = "LIMA"
        case "M": pw = "MIKE"
        case "N": pw = "NOVEMBER"
        case "O": pw = "OSCAR"
        case "P": pw = "PAPA"
        case "Q": pw = "QUEBEC"
        case "R": pw = "ROMEO"
        case "S": pw = "SIERRA"
        case "T": pw = "TANGO"
        case "U": pw = "UNIFORM"
        case "V": pw = "VICTOR"
        case "W": pw = "WHISKEY"
        case "X": pw = "X-RAY"
        case "Y": pw = "YANKEE"
        case "Z": pw = "ZULU"
            
    
        default: pw = "Error"
        }
        return pw
    }
}
