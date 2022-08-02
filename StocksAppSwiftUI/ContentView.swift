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
    
    let releaseDate = Date()
    
    let stackDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd yyyy"
        return formatter
    }()
    
    @ObservedObject var stockListViewModel = StockListViewModel()
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
      coloredAppearance.backgroundColor = .black
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      UINavigationBar.appearance().tintColor = .white
        stockListViewModel.loadStock()
    }
    
    var body: some View {
        NavigationView {
            ZStack() {
                VStack (alignment: .leading, spacing: 10) {
                    HStack() {
                        Text(releaseDate,formatter: self.stackDateFormat)
                            .padding(.horizontal,20)
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        
                    }
                    HStack() {
                        SearchBarView(searchStock: .constant(""))

                    }
                    ListView(stockList: stockListViewModel.stockList)
                    Spacer()
                    
                    
                }
            }
            .navigationTitle("Stocks")
            .navigationBarTitleDisplayMode(.large)
            .foregroundColor(.black)
            .padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
