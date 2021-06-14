//
//  NutritionDetailesViewModel.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation

struct NutritionDetailesViewModel {
    
    let nutritionDetails: NutritionDetails
    
    init(nutritionDetails :NutritionDetails) {
        self.nutritionDetails = nutritionDetails
    }
    
    var totalCalories: Double {
        guard let totalCalories = nutritionDetails.totalNutrientsKCal?.eNERC_KCAL?.quantity else {
            return 0
        }
        return totalCalories.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalFat: Double {
        guard let totalFat = nutritionDetails.totalNutrients?.fAT?.quantity else {
            return 0
        }
        return totalFat.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalFatUnit: String {
        guard let totalFatUnit = nutritionDetails.totalNutrients?.fAT?.unit else {
            return ""
        }
        return String(format: "%.1f", totalFat) + " \(totalFatUnit)"
    }
    
    var totalFatDaily: Double {
        guard let totalFat = nutritionDetails.totalDaily?.fAT?.quantity else {
            return 0
        }
        return totalFat.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalFatUnitDaily: String {
        guard let totalFatUnit = nutritionDetails.totalDaily?.fAT?.unit else {
            return ""
        }
        return String(format: "%.0f", totalFatDaily) + " \(totalFatUnit)"
    }
    
    
    var totalCHOLE: Double {
        guard let totalCHOLE = nutritionDetails.totalNutrients?.cHOLE?.quantity else {
            return 0
        }
        return totalCHOLE.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCHOLEUnit: String {
        guard let totalCHOLEUnit = nutritionDetails.totalNutrients?.cHOLE?.unit else {
            return ""
        }
        return String(format: "%.1f", totalCHOLE) + " \(totalCHOLEUnit)"
    }
    
    var totalCHOLEDaily: Double {
        guard let totalCHOLEDaily = nutritionDetails.totalDaily?.cHOLE?.quantity else {
            return 0
        }
        return totalCHOLEDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCHOLEUnitDaily: String {
        guard let totalCHOLEUnitDaily = nutritionDetails.totalDaily?.cHOLE?.unit else {
            return ""
        }
        return String(format: "%.0f", totalCHOLEDaily) + " \(totalCHOLEUnitDaily)"
    }
    
    var totalSodium: Double {
        guard let totalSodium = nutritionDetails.totalNutrients?.nA?.quantity else {
            return 0
        }
        return totalSodium.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalSodiumUnit: String {
        guard let totalSodiumUnit = nutritionDetails.totalNutrients?.nA?.unit else {
            return ""
        }
        return String(format: "%.1f", totalSodium) + " \(totalSodiumUnit)"
    }
    
    var totalSodiumDaily: Double {
        guard let totalSodiumDaily = nutritionDetails.totalDaily?.nA?.quantity else {
            return 0
        }
        return totalSodiumDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalSodiumUnitDaily: String {
        guard let totalSodiumUnitDaily = nutritionDetails.totalDaily?.nA?.unit else {
            return ""
        }
        return String(format: "%.0f", totalSodiumDaily) + " \(totalSodiumUnitDaily)"
    }
    
    var totalCarbs: Double {
        guard let totalCarbs = nutritionDetails.totalNutrients?.cHOCDF?.quantity else {
            return 0
        }
        return totalCarbs.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCarbsUnit: String {
        guard let totalCarbsUnit = nutritionDetails.totalNutrients?.cHOCDF?.unit else {
            return ""
        }
        return String(format: "%.1f", totalCarbs) + " \(totalCarbsUnit)"
    }
    
    var totalCarbsDaily: Double {
        guard let totalCarbsDaily = nutritionDetails.totalDaily?.cHOCDF?.quantity else {
            return 0
        }
        return totalCarbsDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCarbsUnitDaily: String {
        guard let totalCarbsUnitDaily = nutritionDetails.totalDaily?.cHOCDF?.unit else {
            return ""
        }
        return String(format: "%.0f", totalCarbsDaily) + " \(totalCarbsUnitDaily)"
    }
    
    var totalCarbsFiber: Double {
        guard let totalCarbsFiber = nutritionDetails.totalNutrients?.fIBTG?.quantity else {
            return 0
        }
        return totalCarbsFiber.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCarbsFiberUnit: String {
        guard let totalCarbsFiberUnit = nutritionDetails.totalNutrients?.fIBTG?.unit else {
            return ""
        }
        return String(format: "%.1f", totalCarbsFiber) + " \(totalCarbsFiberUnit)"
    }
    
    var totalCarbsFiberDaily: Double {
        guard let totalCarbsFiberDaily = nutritionDetails.totalDaily?.fIBTG?.quantity else {
            return 0
        }
        return totalCarbsFiberDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCarbsFiberUnitDaily: String {
        guard let totalCarbsFiberUnitDaily = nutritionDetails.totalDaily?.fIBTG?.unit else {
            return ""
        }
        return String(format: "%.0f", totalCarbsFiberDaily) + " \(totalCarbsFiberUnitDaily)"
    }
    
    var totalCarbsSugar: Double {
        guard let totalCarbsSugar = nutritionDetails.totalNutrients?.sUGAR?.quantity else {
            return 0
        }
        return totalCarbsSugar.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCarbsSugarUnit: String {
        guard let totalCarbsSugarUnit = nutritionDetails.totalNutrients?.sUGAR?.unit else {
            return ""
        }
        return String(format: "%.1f", totalCarbsSugar) + " \(totalCarbsSugarUnit)"
    }
    
    var totalProtein: Double {
        guard let totalProtein = nutritionDetails.totalNutrients?.pROCNT?.quantity else {
            return 0
        }
        return totalProtein.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalProteinUnit: String {
        guard let totalProteinUnit = nutritionDetails.totalNutrients?.pROCNT?.unit else {
            return ""
        }
        return String(format: "%.1f", totalProtein) + " \(totalProteinUnit)"
    }
    
    var totalProteinDaily: Double {
        guard let totalProteinDaily = nutritionDetails.totalDaily?.pROCNT?.quantity else {
            return 0
        }
        return totalProteinDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalProteinUnitDaily: String {
        guard let totalProteinUnitDaily = nutritionDetails.totalDaily?.pROCNT?.unit else {
            return ""
        }
        return String(format: "%.0f", totalProteinDaily) + " \(totalProteinUnitDaily)"
    }
    
    
    var totalVitaminD: Double {
        guard let totalVitaminD = nutritionDetails.totalNutrients?.vITD?.quantity else {
            return 0
        }
        return totalVitaminD.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalVitaminDUnit: String {
        guard let totalVitaminDUnit = nutritionDetails.totalNutrients?.vITD?.unit else {
            return ""
        }
        return String(format: "%.1f", totalVitaminD) + " \(totalVitaminDUnit)"
    }
    
    var totalVitaminDDaily: Double {
        guard let totalVitaminDDaily = nutritionDetails.totalDaily?.vITD?.quantity else {
            return 0
        }
        return totalVitaminDDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalVitaminDUnitDaily: String {
        guard let totalVitaminDUnitDaily = nutritionDetails.totalDaily?.vITD?.unit else {
            return ""
        }
        return String(format: "%.0f", totalVitaminDDaily) + " \(totalVitaminDUnitDaily)"
    }
    
    
    var totalCalcium: Double {
        guard let totalCalcium = nutritionDetails.totalNutrients?.cA?.quantity else {
            return 0
        }
        return totalCalcium.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCalciumUnit: String {
        guard let totalCalciumUnit = nutritionDetails.totalNutrients?.cA?.unit else {
            return ""
        }
        return String(format: "%.1f", totalCalcium) + " \(totalCalciumUnit)"
    }
    
    var totalCalciumDaily: Double {
        guard let totalCalciumDaily = nutritionDetails.totalDaily?.cA?.quantity else {
            return 0
        }
        return totalCalciumDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalCalciumUnitDaily: String {
        guard let totalCalciumUnitDaily = nutritionDetails.totalDaily?.cA?.unit else {
            return ""
        }
        return String(format: "%.0f", totalCalciumDaily) + " \(totalCalciumUnitDaily)"
    }
    
    var totalIron: Double {
        guard let totalIron = nutritionDetails.totalNutrients?.fE?.quantity else {
            return 0
        }
        return totalIron.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalIronUnit: String {
        guard let totalIronUnit = nutritionDetails.totalNutrients?.fE?.unit else {
            return ""
        }
        return String(format: "%.1f", totalIron) + " \(totalIronUnit)"
    }
    
    var totalIronDaily: Double {
        guard let totalIronDaily = nutritionDetails.totalDaily?.fE?.quantity else {
            return 0
        }
        return totalIronDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalIronUnitDaily: String {
        guard let totalIronUnitDaily = nutritionDetails.totalDaily?.fE?.unit else {
            return ""
        }
        return String(format: "%.0f", totalIronDaily) + " \(totalIronUnitDaily)"
    }
    
    var totalPotassium: Double {
        guard let totalPotassium = nutritionDetails.totalNutrients?.k?.quantity else {
            return 0
        }
        return totalPotassium.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalPotassiumUnit: String {
        guard let totalPotassiumUnit = nutritionDetails.totalNutrients?.k?.unit else {
            return ""
        }
        return String(format: "%.1f", totalPotassium) + " \(totalPotassiumUnit)"
    }
    
    var totalPotassiumDaily: Double {
        guard let totalPotassiumDaily = nutritionDetails.totalDaily?.k?.quantity else {
            return 0
        }
        return totalPotassiumDaily.rounded(.toNearestOrAwayFromZero)
    }
    
    var totalPotassiumUnitDaily: String {
        guard let totalPotassiumUnitDaily = nutritionDetails.totalDaily?.k?.unit else {
            return ""
        }
        return String(format: "%.0f", totalPotassiumDaily) + " \(totalPotassiumUnitDaily)"
    }
}
