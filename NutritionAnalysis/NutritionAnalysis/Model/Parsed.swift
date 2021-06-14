//
//  Parsed.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
struct Parsed : Codable {
    var quantity : Int?
    var measure : String?
    var foodMatch : String?
    var food : String?
    var foodId : String?
    var weight : Double?
    var retainedWeight : Double?
    var nutrients : Nutrients?
}
