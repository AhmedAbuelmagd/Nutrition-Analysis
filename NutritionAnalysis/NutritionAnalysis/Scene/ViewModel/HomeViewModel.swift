//
//  HomeViewModel.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import Foundation

protocol HomeViewModelProtocol {
    var ingredient: String? { get set }
    var nutritionDetailesViewModel:NutritionDetailesViewModel? { get set }
    
    var showLoading: Bindable<Bool> { get }

    var updateAnalyzeButtonState: ((Bool) -> ())? { get set }
    var navigate: ((NutritionDetailesViewModel) -> ())?  { get set }
    var onShowError: ((String) -> Void)?  { get set }
    
    func analyze()
}

class HomeViewModel: HomeViewModelProtocol {
    
    var ingredient: String? {
        didSet {
            validateInput()
        }
    }
    
    var nutritionDetailesViewModel: NutritionDetailesViewModel?
    
    var updateAnalyzeButtonState: ((Bool) -> ())?
    
    var navigate: ((NutritionDetailesViewModel) -> ())?
    
    var onShowError: ((String) -> Void)?
    
    var showLoading: Bindable<Bool> = Bindable(false)
    
    private let appServerClient: ApiNetworkProtocol
    private var validInputData: Bool = false {
        didSet {
            if oldValue != validInputData {
                updateAnalyzeButtonState?(validInputData)
            }
        }
    }
    
    init(appServerClient: ApiNetworkProtocol = ApiNetworkManager()) {
        self.appServerClient = appServerClient
    }
    
    func analyze() {
        guard let ingredientList = ingredient?.lines else {
            return
        }
    
        updateAnalyzeButtonState?(false)
        showLoading.value = true
        
        appServerClient.nutritionDetails(ingr: ingredientList) { [weak self] result in
            guard let `self` = self else {
                return
            }
            self.showLoading.value = false
            self.updateAnalyzeButtonState?(true)
            switch result {
            case .success(let nutritionDetails):
                self.nutritionDetailesViewModel = NutritionDetailesViewModel(nutritionDetails: nutritionDetails)
                if let vm = self.nutritionDetailesViewModel {
                    self.navigate?(vm)
                }
            case .failure(let error):
                if let errors = error as? GetGeneralApiFailureReason {
                    self.onShowError?(errors.getErrorMessage() ?? ERRORS.UNKNOWN.rawValue)
                }else {
                    self.onShowError?(ERRORS.UNKNOWN.rawValue)
                }
            }
        }
    }
    
    func validateInput() {
        let validData = [ingredient].filter {
            ($0?.count ?? 0) < 1
        }
        validInputData = (validData.count == 0) ? true : false
    }
    
}
