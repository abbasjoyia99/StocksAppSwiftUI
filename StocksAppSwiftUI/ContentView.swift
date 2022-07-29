//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 28/07/2022.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

struct ContentView: View {
    var body: some View {
        Text("install app center")
            .padding()
    }
    func addApCenterSetup() {
        AppCenter.start(withAppSecret: "800c3e33-e55a-42e3-80c5-8082062db97f", services:[
              Analytics.self,
              Crashes.self
            ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
