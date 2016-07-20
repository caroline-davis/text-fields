//
//  CashTextField.swift
//  TextFields
//
//  Created by Caroline Davis on 20/07/2016.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashtextField: NSObject, UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        textField.text = "$0.00"
        return true
    }
}
