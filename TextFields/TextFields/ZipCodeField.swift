//
//  ZipCodeField.swift
//  TextFields
//
//  Created by Caroline Davis on 20/07/2016.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeField: NSObject, UITextFieldDelegate {
 
   func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    
    let maxLength = 5
    let currentString = textField.text! as NSString
    let newString = currentString.stringByReplacingCharactersInRange(range, withString: string)
    return newString.characters.count <= maxLength
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
