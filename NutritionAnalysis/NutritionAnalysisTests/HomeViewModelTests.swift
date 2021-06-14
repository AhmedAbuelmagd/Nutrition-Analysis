//
//  HomeViewModelTests.swift
//  NutritionAnalysisTests
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import XCTest
@testable import NutritionAnalysis

class HomeViewModelTests: XCTestCase {
    
    func testSuccessFetchData() {
        let expectedModel = NutritionDetails.withMock()
        
        let service = MockService(mockData: expectedModel)
        
        let viewModel = HomeViewModel(appServerClient: service)
        
        viewModel.ingredient = "1 cup rice\n10 oz chickpeas"
        viewModel.analyze()
        
        XCTAssertTrue(!viewModel.showLoading.value)
        XCTAssertEqual(viewModel.ingredient?.lines, ["1 cup rice","10 oz chickpeas"])
        XCTAssertTrue((viewModel.nutritionDetailesViewModel != nil))
        XCTAssertEqual(viewModel.nutritionDetailesViewModel?.totalFat, 18.0)
        XCTAssertEqual(viewModel.nutritionDetailesViewModel?.totalFatDaily, 28)
        XCTAssertEqual(viewModel.nutritionDetailesViewModel?.totalCarbs, 333.0)
        XCTAssertEqual(viewModel.nutritionDetailesViewModel?.totalCarbsDaily, 111.0)
        XCTAssertEqual(viewModel.nutritionDetailesViewModel?.totalProtein, 71.0)
        XCTAssertEqual(viewModel.nutritionDetailesViewModel?.totalProteinDaily, 142.0)
    }
    
    func testNilFetchData() {
        let expectedModel: NutritionDetails? = nil
        
        let service = MockService(mockData: expectedModel)
        
        let viewModel = HomeViewModel(appServerClient: service)
        
        viewModel.analyze()
        
        XCTAssertTrue(!viewModel.showLoading.value)
        XCTAssertNil(viewModel.nutritionDetailesViewModel)
    }

}

