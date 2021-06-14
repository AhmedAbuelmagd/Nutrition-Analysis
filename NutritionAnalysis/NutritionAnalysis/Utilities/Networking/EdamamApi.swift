//
//  EdamamApi.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
import Moya


enum EdamamApi {
    case nutritionDetails(ingr: [String])
}


extension EdamamApi: TargetType {
    var baseURL: URL {
        guard let url = URL(string: Config.baseUrl) else {
            preconditionFailure("Invalid url")
        }
        return url
    }
    
    var path: String {
        return Config.method
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var sampleData: Data {
        Data()
    }
    
    var task: Task {
        switch self {
        case .nutritionDetails(let ingr):

            var ulrParameters = [String: Any]()
            ulrParameters[Params.appId] = Config.appId
            ulrParameters[Params.apiKey] = Config.apiKey

            var bodyParameters = [String: Any]()
            bodyParameters[Params.ingr] = ingr
            
            return .requestCompositeParameters(bodyParameters: bodyParameters, bodyEncoding: JSONEncoding.default, urlParameters: ulrParameters)
        }
    }
    
    var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }
}

