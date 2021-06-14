//
//  CommonHelper.swift
//  NutritionAnalysis
//
//  Created by Ahmed Abuelmagd on 27/05/2021.
//

import UIKit
import SwiftMessages

var iPhoneHeight: CGFloat = UIScreen.main.bounds.size.height
var iPhoneWidth: CGFloat = UIScreen.main.bounds.size.width
public var screenWidth:CGFloat { get { return UIScreen.main.bounds.size.width } }
public var screenHeight:CGFloat { get { return UIScreen.main.bounds.size.height } }
public var iphoneXFactor:CGFloat { get {return ((screenWidth * 1.00) / 1080.0)} }
let iPhoneFactorX: CGFloat = (UIScreen.main.bounds.width/1080.0)*3.0
let iPhoneFactorXVC: CGFloat = (UIScreen.main.bounds.width/1080.0)
public func mainQueue(_ closure: @escaping ()->()) {
    DispatchQueue.main.async(execute: closure)
}
// MARK: - loader
public func showLoaderForController(_ controller:UIViewController){
    DispatchQueue.main.async(execute: {
        let loader = Bundle.main.loadNibNamed(IDENTIDIERS.LOADER.rawValue, owner: controller, options: nil)?.last as! LoaderView
        loader.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        loader.tag = 4000
        controller.view.addSubview(loader)
        loader.showLoader()
        //loader.initLoader()
    })
}
public func getCurrentVC() -> UIViewController? {
    // we must get the root UIViewController and iterate through presented views
    if let rootController = UIApplication.shared.windows.first?.rootViewController {
        var currentController: UIViewController! = rootController
        // Each ViewController keeps track of the view it has presented, so we
        // can move from the head to the tail, which will always be the current view
        while( currentController.presentedViewController != nil ) {
            currentController = currentController.presentedViewController
        }
        return currentController
    }
    return nil
}
//MARK: - Colors
public func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

public func hideLoaderForController(_ controller:UIViewController){
    DispatchQueue.main.async(execute: {
        if let view = controller.view.viewWithTag(4000) {
            view.removeFromSuperview()
        }
    })
}
//MARK: - handle message toast
public func displayMessage(message: String, messageError: Bool) {

    let view = MessageView.viewFromNib(layout: .cardView)
    if messageError == true {
        view.configureTheme(.error)
    } else {
        view.configureTheme(.success)
        view.alpha = 0.8
    }
    view.titleLabel?.isHidden = true
    view.bodyLabel?.text = message
    view.titleLabel?.textColor = UIColor.white
    view.bodyLabel?.textColor = UIColor.white
    view.button?.isHidden = true
    view.alpha = 0.9
    var config = SwiftMessages.Config()
    config.presentationStyle = .bottom
    SwiftMessages.show(config: config, view: view)
}
