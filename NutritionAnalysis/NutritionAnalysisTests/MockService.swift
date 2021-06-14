//
//  MockService.swift
//  NutritionAnalysisTests
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation
@testable import NutritionAnalysis

class MockService: ApiNetworkProtocol {
    
    let mockData: NutritionDetails?
    
    init(mockData: NutritionDetails?) {
        self.mockData = mockData
    }
    func nutritionDetails(ingr: [String], completionHandler: @escaping (Result<NutritionDetails, Error>) -> ()) {
        if let data = mockData {
            completionHandler(.success(data))
        }else {
            completionHandler(.failure(GetGeneralApiFailureReason.notFound))
        }
    }
}
