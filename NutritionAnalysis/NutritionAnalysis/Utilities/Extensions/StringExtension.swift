//
//  StringExtension.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
extension String {
    var lines: [String] {
        return self.components(separatedBy: "\n")
    }
}
