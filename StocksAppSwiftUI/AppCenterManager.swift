//
//  AppCenterManager.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 29/07/2022.
//

import Foundation
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

class AppCenterManager {
    static let shared = AppCenterManager()
     init() {
        AppCenter.start(withAppSecret: "800c3e33-e55a-42e3-80c5-8082062db97f", services:[
          Analytics.self,
          Crashes.self
        ])
    }
}
