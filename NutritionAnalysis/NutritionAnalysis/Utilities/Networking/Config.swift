//
//  Config.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation

enum Config {
    static let baseUrl = "https://api.edamam.com/api/"
    static let apiKey = "3a2461bbadeafa61802bdda02b778275"
    static let appId = "4797a723"
    static let method = "nutrition-details"
    static let title = "title"
}

enum Params {
    static let appId = "app_id"
    static let apiKey = "app_key"
    static let title = "title"
    static let ingr = "ingr"
}
