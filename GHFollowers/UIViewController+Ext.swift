//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Alexis Horteales Espinosa on 22/11/25.
//


import UIKit


extension UIViewController {
    /// Presents a custom alert safely on the main thread.
    func presentCFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            /// Create the custom alert view controller
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            /// Make it appear above everything with a fade-in animation
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            /// Present the alert
            self.present(alertVC, animated: true)
        }
    }
}

