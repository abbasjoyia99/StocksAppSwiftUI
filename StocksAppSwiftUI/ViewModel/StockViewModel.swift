//
//  StockViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 29/07/2022.
//

import Foundation

struct StockViewModel {
    let stock :Stok
    
    var symbol:String {
        return self.stock.symbol
    }
    var description:String {
        return self.stock.description
    }
    var price:String {
        return String(format: "%0.2f", self.stock.price)
    }
    var change:String {
        return self.stock.change
    }
}
