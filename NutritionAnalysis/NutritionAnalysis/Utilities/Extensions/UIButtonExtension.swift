//
//  UIButtonExtension.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import UIKit

extension UIButton{
    func changeStatus(isEnabled: Bool){
        self.layer.borderWidth = 0
        self.isEnabled = isEnabled
        self.backgroundColor = isEnabled ? UIColor.systemOrange : UIColor.systemGray
    }
}
