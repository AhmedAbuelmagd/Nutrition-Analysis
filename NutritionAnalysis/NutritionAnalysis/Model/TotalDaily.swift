//
//  TotalDaily.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
struct TotalDaily : Codable {
    let eNERC_KCAL : NutrientQuantity?
    let fAT : NutrientQuantity?
    let fASAT : NutrientQuantity?
    let cHOCDF : NutrientQuantity?
    let fIBTG : NutrientQuantity?
    let pROCNT : NutrientQuantity?
    let cHOLE : NutrientQuantity?
    let nA : NutrientQuantity?
    let cA : NutrientQuantity?
    let mG : NutrientQuantity?
    let k : NutrientQuantity?
    let fE : NutrientQuantity?
    let zN : NutrientQuantity?
    let p : NutrientQuantity?
    let vITA_RAE : NutrientQuantity?
    let vITC : NutrientQuantity?
    let tHIA : NutrientQuantity?
    let rIBF : NutrientQuantity?
    let nIA : NutrientQuantity?
    let vITB6A : NutrientQuantity?
    let fOL : NutrientQuantity?
    let vITB12 : NutrientQuantity?
    let vITD : NutrientQuantity?
    let tOCPHA : NutrientQuantity?
    let vITK1 : NutrientQuantity?

    enum CodingKeys: String, CodingKey {

        case eNERC_KCAL = "ENERC_KCAL"
        case fAT = "FAT"
        case fASAT = "FASAT"
        case cHOCDF = "CHOCDF"
        case fIBTG = "FIBTG"
        case pROCNT = "PROCNT"
        case cHOLE = "CHOLE"
        case nA = "NA"
        case cA = "CA"
        case mG = "MG"
        case k = "K"
        case fE = "FE"
        case zN = "ZN"
        case p = "P"
        case vITA_RAE = "VITA_RAE"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOL = "FOL"
        case vITB12 = "VITB12"
        case vITD = "VITD"
        case tOCPHA = "TOCPHA"
        case vITK1 = "VITK1"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .eNERC_KCAL)
        fAT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAT)
        fASAT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fASAT)
        cHOCDF = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cHOCDF)
        fIBTG = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fIBTG)
        pROCNT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .pROCNT)
        cHOLE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cHOLE)
        nA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .nA)
        cA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cA)
        mG = try values.decodeIfPresent(NutrientQuantity.self, forKey: .mG)
        k = try values.decodeIfPresent(NutrientQuantity.self, forKey: .k)
        fE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fE)
        zN = try values.decodeIfPresent(NutrientQuantity.self, forKey: .zN)
        p = try values.decodeIfPresent(NutrientQuantity.self, forKey: .p)
        vITA_RAE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITA_RAE)
        vITC = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITC)
        tHIA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .tHIA)
        rIBF = try values.decodeIfPresent(NutrientQuantity.self, forKey: .rIBF)
        nIA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .nIA)
        vITB6A = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITB6A)
        fOL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fOL)
        vITB12 = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITB12)
        vITD = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITD)
        tOCPHA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .tOCPHA)
        vITK1 = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITK1)
    }
    
    init(fAT: NutrientQuantity, carb: NutrientQuantity, protein: NutrientQuantity) {
        eNERC_KCAL = nil
        self.fAT = fAT
        fASAT = nil
        self.cHOCDF = carb
        fIBTG = nil
        self.pROCNT = protein
        cHOLE = nil
        nA = nil
        cA = nil
        mG = nil
        k = nil
        fE = nil
        zN = nil
        p = nil
        vITA_RAE = nil
        vITC = nil
        tHIA = nil
        rIBF = nil
        nIA = nil
        vITB6A = nil
        fOL = nil
        vITB12 = nil
        vITD = nil
        tOCPHA = nil
        vITK1 = nil
    }

}




