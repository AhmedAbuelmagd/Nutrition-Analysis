//
//  HomeVC.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 26/05/2021.
//

import UIKit
//import IQKeyboardManagerSwift

class HomeVC: UIViewController {
    let textViewPlaceholder = "For example:\n1 cup rice, \n10 oz chickpeas"
    //MARK:- IBOutlet
    @IBOutlet weak var textViewContainer: UIView!
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.delegate = self
        }
    }
    @IBOutlet weak var analyzeButton: UIButton!
    
    // MARK:- Variables
    lazy var viewModel: HomeViewModel = {
        return HomeViewModel()
    }()
    
    //MARK:- Controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    @IBAction func analyzeAction(_ sender: Any) {
        viewModel.analyze()
    }
    
}


// MARK:- Helpers
extension HomeVC {
    func initView() {
        initUI()
        bindViewModel()
        initTxtView()
    }
    func initUI(){
        textViewContainer.setShadow(cRadius: 15)
        analyzeButton.setBorder(color: UIColor.gray, width: 1, corderRadius: 8)
    }
    func initTxtView() {
        textView.delegate = self
        mainQueue {
            self.textView.textColor = #colorLiteral(red: 0.835, green: 0.835, blue: 0.835 , alpha: 1)
        }
        textView.text = textViewPlaceholder
    }
    
    func bindViewModel() {
        viewModel.showLoading.bind { [weak self] visible in
            if self != nil {
                visible ? showLoaderForController(getCurrentVC() ?? UIViewController()) : hideLoaderForController(getCurrentVC() ?? UIViewController())
            }
        }
        
        viewModel.updateAnalyzeButtonState = { [weak self] state in
            self?.analyzeButton.changeStatus(isEnabled: state ? true : false)
        }
        
        viewModel.navigate = { [weak self] nutritionDetailesViewModel in
            guard let self = self else {
                return
            }
            let vc = NutritionFactsVC.create()
            vc.nutritionDetailesViewModel = nutritionDetailesViewModel
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
        viewModel.onShowError = { message in
            displayMessage(message: message, messageError: true)
        }
    }
    
}

// MARK:- UI Text View Delegate
extension HomeVC: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        viewModel.ingredient = textView.text ?? ""
    }
    func textViewDidBeginEditing( _ textView: UITextView) {
        if (textView.text == textViewPlaceholder){
            textView.text = ""
            textView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    func textViewDidEndEditing( _ textView: UITextView) {
        if textView.text.isEmpty {
            textView.textColor = #colorLiteral(red: 0.295610249, green: 0.3033975363, blue: 0.3033648133, alpha: 1)
            textView.text = textViewPlaceholder
        }
    }
}
