//
//  MockNutritionDetails.swift
//  NutritionAnalysisTests
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
@testable import NutritionAnalysis

extension NutritionDetails {
    
    static func withMock(calories: Int = 1772,totalWeight: Double = 478.49, totalNutrients: TotalNutrients = TotalNutrients(fAT: NutrientQuantity(label: "Fat", quantity: 18.2, unit: "g"), carb: NutrientQuantity(label: "Carbs", quantity: 333.17, unit: "g"), protein: NutrientQuantity(label: "Protein", quantity: 70.92, unit: "g")), totalDaily : TotalDaily = TotalDaily(fAT: NutrientQuantity(label: "Fat", quantity: 28.08, unit: "%"), carb: NutrientQuantity(label: "Carbs", quantity: 111.05, unit: "%"), protein: NutrientQuantity(label: "Protein", quantity: 141.84, unit: "%"))) -> NutritionDetails {
        return NutritionDetails(calories: calories, totalWeight: totalWeight, totalNutrients: totalNutrients, totalDaily: totalDaily)
    }
    
}
