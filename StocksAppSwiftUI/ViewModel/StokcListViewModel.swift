//
//  StokcListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 29/07/2022.
//

import Foundation
import SwiftUI
import Combine


class StockListViewModel:ObservableObject {
    
    @Published var searchStock:String = ""
    @Published var stockList:[StockViewModel] = [StockViewModel]()
    
    func loadStock() {
        fetchStocks()
    }
    private  func fetchStocks() {
        Services().getStocks() { [weak self] stocks in
            
            if let stocks = stocks {
                
                self?.stockList = stocks.map(StockViewModel.init)
            }
        }
    }
}
