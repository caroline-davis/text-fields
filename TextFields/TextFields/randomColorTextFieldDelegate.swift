//
//  randomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Caroline Davis on 19/07/2016.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class randomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.redColor(), UIColor.orangeColor(),
                  UIColor.yellowColor(), UIColor.greenColor(),
                  UIColor.blueColor(), UIColor.purpleColor(),
                  UIColor.brownColor()];
    
    // TODO: return a random color
     func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
     }
    
    //TODO: Set the color of your text here!
    func textField(textField: UITextField, shouldChangeCharactersInRange
        range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
}