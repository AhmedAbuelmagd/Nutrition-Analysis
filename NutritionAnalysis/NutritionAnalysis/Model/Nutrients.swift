//
//  Nutrients.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
struct Nutrients : Codable {
    let pROCNT : NutrientQuantity?
    let fAT : NutrientQuantity?
    let eNERC_KCAL : NutrientQuantity?
    let cA : NutrientQuantity?
    let fE : NutrientQuantity?
    let mG : NutrientQuantity?
    let p : NutrientQuantity?
    let k : NutrientQuantity?
    let nA : NutrientQuantity?
    let zN : NutrientQuantity?
    let vITD : NutrientQuantity?
    let vITC : NutrientQuantity?
    let tHIA : NutrientQuantity?
    let rIBF : NutrientQuantity?
    let nIA : NutrientQuantity?
    let vITB6A : NutrientQuantity?
    let fOL : NutrientQuantity?
    let vITB12 : NutrientQuantity?
    let cHOLE : NutrientQuantity?
    let fASAT : NutrientQuantity?
    let fAMS : NutrientQuantity?
    let fAPU : NutrientQuantity?

    enum CodingKeys: String, CodingKey {

        case pROCNT = "PROCNT"
        case fAT = "FAT"
        case eNERC_KCAL = "ENERC_KCAL"
        case cA = "CA"
        case fE = "FE"
        case mG = "MG"
        case p = "P"
        case k = "K"
        case nA = "NA"
        case zN = "ZN"
        case vITD = "VITD"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOL = "FOL"
        case vITB12 = "VITB12"
        case cHOLE = "CHOLE"
        case fASAT = "FASAT"
        case fAMS = "FAMS"
        case fAPU = "FAPU"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        pROCNT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .pROCNT)
        fAT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAT)
        eNERC_KCAL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .eNERC_KCAL)
        cA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cA)
        fE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fE)
        mG = try values.decodeIfPresent(NutrientQuantity.self, forKey: .mG)
        p = try values.decodeIfPresent(NutrientQuantity.self, forKey: .p)
        k = try values.decodeIfPresent(NutrientQuantity.self, forKey: .k)
        nA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .nA)
        zN = try values.decodeIfPresent(NutrientQuantity.self, forKey: .zN)
        vITD = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITD)
        vITC = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITC)
        tHIA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .tHIA)
        rIBF = try values.decodeIfPresent(NutrientQuantity.self, forKey: .rIBF)
        nIA = try values.decodeIfPresent(NutrientQuantity.self, forKey: .nIA)
        vITB6A = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITB6A)
        fOL = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fOL)
        vITB12 = try values.decodeIfPresent(NutrientQuantity.self, forKey: .vITB12)
        cHOLE = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cHOLE)
        fASAT = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fASAT)
        fAMS = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAMS)
        fAPU = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAPU)
    }
    
    init(eNERC_KCAL : NutrientQuantity) {
        self.pROCNT = nil
        fAT = nil
        self.eNERC_KCAL = eNERC_KCAL
        cA = nil
        fE = nil
        mG = nil
        p = nil
        k = nil
        nA = nil
        zN = nil
        vITD = nil
        vITC = nil
        tHIA = nil
        rIBF = nil
        nIA = nil
        vITB6A = nil
        fOL = nil
        vITB12 = nil
        cHOLE = nil
        fASAT = nil
        fAMS = nil
        fAPU = nil
    }
}
