//
//  ListView.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 30/07/2022.
//

import SwiftUI

struct ListView: View {
    var stockList:[StockViewModel]
    var body: some View {
        
        List (stockList,id:\.symbol ) { stock in
            StockCellView(stock: stock)
                .listRowInsets(.init())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        let stockViewModel = StockViewModel(stock: .init(symbol: "amazon", description: "test", price: 200.0, change: "-2.5"))
        let stocksList = [stockViewModel]
        ListView(stockList: stocksList)
    }
}
