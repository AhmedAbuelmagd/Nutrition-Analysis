//
//  LoaderView.swift
//  Aroad
//
//  Created by Mina Thabet on 05/10/2020.
//  Copyright © 2020 hardtask. All rights reserved.
//


import UIKit
import NVActivityIndicatorView

class LoaderView: UIView {
    func showLoader()  {
        let color = hexStringToUIColor(hex: "9567CB")
        let size: CGFloat =  UIScreen.main.traitCollection.horizontalSizeClass == .regular ? 100.0 : 50.0
        let loader = NVActivityIndicatorView(frame: CGRect(x:center.x - (size / 2) ,y:center.y - (size / 2),width:size,height:size), type: .ballSpinFadeLoader, color: color, padding: nil)
        self.addSubview(loader)
        loader.startAnimating()
    }
}
