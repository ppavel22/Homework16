//
//  UIColor + Extension.swift
//  Homework16
//
//  Created by mac on 18.11.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
    let colorArray = Helpers.generateRandomArray(quantity: 3, maxBound: 255)
    let randomColor = UIColor(red: colorArray[0] / 255.0,
                              green: colorArray[1] / 255.0,
                              blue: colorArray[2] / 255.0 ,
                              alpha: 1.0)
    return randomColor
    }
}
