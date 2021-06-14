//
//  NutritionFactsVC.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import UIKit

class NutritionFactsVC: UIViewController {
        
        //MARK:- IBOutlet
        @IBOutlet weak var caloriesLbl: UILabel!
        @IBOutlet weak var totalFatLbl: UILabel!
        @IBOutlet weak var totalFatDailyLbl: UILabel!
        @IBOutlet weak var cholesterolLbl: UILabel!
        @IBOutlet weak var cholesterolDailyLbl: UILabel!
        @IBOutlet weak var sodiumLbl: UILabel!
        @IBOutlet weak var sodiumDailyLbl: UILabel!
        @IBOutlet weak var totalCarbohydrateLbl: UILabel!
        @IBOutlet weak var totalCarbohydrateDailyLbl: UILabel!
        @IBOutlet weak var dietaryFiberLbl: UILabel!
        @IBOutlet weak var dietaryFiberDailyLbl: UILabel!
        @IBOutlet weak var totalSugarsLbl: UILabel!
        @IBOutlet weak var proteinLbl: UILabel!
        @IBOutlet weak var proteinDailyLbl: UILabel!
        @IBOutlet weak var vitaminDLbl: UILabel!
        @IBOutlet weak var vitaminDDailyLbl: UILabel!
        @IBOutlet weak var calciumLbl: UILabel!
        @IBOutlet weak var calciumDailyLbl: UILabel!
        @IBOutlet weak var ironLbl: UILabel!
        @IBOutlet weak var ironDailyLbl: UILabel!
        @IBOutlet weak var potassiumLbl: UILabel!
        @IBOutlet weak var potassiumDailyLbl: UILabel!
        
        // MARK:- Variables
        var nutritionDetailesViewModel:NutritionDetailesViewModel?

        override func viewDidLoad() {
            super.viewDidLoad()
            initVMData()
        }
    }

    // MARK:- Helpers
    extension NutritionFactsVC {
        // MARK: - Create
        class func create() -> NutritionFactsVC {
            let vc = UIStoryboard(name: STORYBOARDS.MAIN.rawValue, bundle: nil).instantiateViewController(withIdentifier: IDENTIDIERS.NUTRITION_FACTS.rawValue) as! NutritionFactsVC
            vc.modalPresentationStyle = .fullScreen
            return vc
        }
        func initVMData() {
            if let viewModel = nutritionDetailesViewModel {
                caloriesLbl.text = "\(viewModel.totalCalories)"
                totalFatLbl.text = viewModel.totalFatUnit
                totalFatDailyLbl.text = viewModel.totalFatUnitDaily
                cholesterolLbl.text = viewModel.totalCHOLEUnit
                cholesterolDailyLbl.text = viewModel.totalCHOLEUnitDaily
                sodiumLbl.text = viewModel.totalSodiumUnit
                sodiumDailyLbl.text = viewModel.totalSodiumUnitDaily
                totalCarbohydrateLbl.text = viewModel.totalCarbsUnit
                totalCarbohydrateDailyLbl.text = viewModel.totalCarbsUnitDaily
                dietaryFiberLbl.text = viewModel.totalCarbsFiberUnit
                dietaryFiberDailyLbl.text = viewModel.totalCarbsFiberUnitDaily
                totalSugarsLbl.text = viewModel.totalCarbsSugarUnit
                proteinLbl.text = viewModel.totalProteinUnit
                proteinDailyLbl.text = viewModel.totalProteinUnitDaily
                vitaminDLbl.text = viewModel.totalVitaminDUnit
                vitaminDDailyLbl.text = viewModel.totalVitaminDUnitDaily
                calciumLbl.text = viewModel.totalCalciumUnit
                calciumDailyLbl.text = viewModel.totalCalciumUnitDaily
                ironLbl.text = viewModel.totalIronUnit
                ironDailyLbl.text = viewModel.totalIronUnitDaily
                potassiumLbl.text = viewModel.totalPotassiumUnit
                potassiumDailyLbl.text = viewModel.totalPotassiumUnitDaily
            }
        }
    }
