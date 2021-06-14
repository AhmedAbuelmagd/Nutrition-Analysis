//
//  TotalNutrientsKCal.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
struct TotalNutrientsKCal : Codable {
    let eNERC_KCAL : NutrientQuantity?
    let pROCNT_KCAL : NutrientQuantity?
    let fAT_KCAL : NutrientQuantity?
    let cHOCDF_KCAL : NutrientQuantity?

    enum CodingKeys: String, CodingKey {

        case eNERC_KCAL = "ENERC_KCAL"
        case pROCNT_KCAL = "PROCNT_KCAL"
        case fAT_KCAL = "FAT_KCAL"
        case cHOCDF_KCAL = "CHOCDF_KCAL"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .eNERC_KCAL)
        pROCNT_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .pROCNT_KCAL)
        fAT_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAT_KCAL)
        cHOCDF_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cHOCDF_KCAL)
    }

}
