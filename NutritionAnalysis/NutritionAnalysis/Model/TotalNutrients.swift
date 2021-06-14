//
//  TotalNutrients.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
struct TotalNutrients : Codable {
    var eNERC_KCAL : NutrientQuantity?
    var fAT : NutrientQuantity?
    var fASAT : NutrientQuantity?
    var fATRN : NutrientQuantity?
    var fAMS : NutrientQuantity?
    var fAPU : NutrientQuantity?
    var cHOCDF : NutrientQuantity?
    var fIBTG : NutrientQuantity?
    var sUGAR : NutrientQuantity?
    var pROCNT : NutrientQuantity?
    var cHOLE : NutrientQuantity?
    var nA : NutrientQuantity?
    var cA : NutrientQuantity?
    var mG : NutrientQuantity?
    var k : NutrientQuantity?
    var fE : NutrientQuantity?
    var zN : NutrientQuantity?
    var p : NutrientQuantity?
    var vITA_RAE : NutrientQuantity?
    var vITC : NutrientQuantity?
    var tHIA : NutrientQuantity?
    var rIBF : NutrientQuantity?
    var nIA : NutrientQuantity?
    var vITB6A : NutrientQuantity?
    var fOL : NutrientQuantity?
    var vITB12 : NutrientQuantity?
    var vITD : NutrientQuantity?
    var tOCPHA : NutrientQuantity?
    var vITK1 : NutrientQuantity?

    enum CodingKeys: String, CodingKey {

        case eNERC_KCAL = "ENERC_KCAL"
        case fAT = "FAT"
        case fASAT = "FASAT"
        case fATRN = "FATRN"
        case fAMS = "FAMS"
        case fAPU = "FAPU"
        case cHOCDF = "CHOCDF"
        case fIBTG = "FIBTG"
        case sUGAR = "SUGAR"
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
        fATRN = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fATRN)
        fAMS = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAMS)
        fAPU = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fAPU)
        cHOCDF = try values.decodeIfPresent(NutrientQuantity.self, forKey: .cHOCDF)
        fIBTG = try values.decodeIfPresent(NutrientQuantity.self, forKey: .fIBTG)
        sUGAR = try values.decodeIfPresent(NutrientQuantity.self, forKey: .sUGAR)
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
        fATRN = nil
        fAMS = nil
        fAPU = nil
        self.cHOCDF = carb
        fIBTG = nil
        sUGAR = nil
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
