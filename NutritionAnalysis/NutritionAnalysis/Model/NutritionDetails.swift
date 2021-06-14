//
//  NutritionDetails.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
struct NutritionDetails: Codable {
    var uri: String?
    var yield: Int?
    var calories: Int?
    var totalWeight: Double?
    var dietLabels: [String]?
    var healthLabels: [String]?
    var cautions: [String]?
    var totalNutrients: TotalNutrients?
    var totalDaily: TotalDaily?
    var totalNutrientsKCal: TotalNutrientsKCal?
    var ingredients: [Ingredients]?
}
