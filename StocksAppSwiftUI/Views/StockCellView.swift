//
//  StockCellView.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 30/07/2022.
//

import SwiftUI

struct StockCellView: View {
    var stock:StockViewModel
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing:4) {
                Text(stock.symbol)
                    .font(.headline)
                Text(stock.description)
                    .font(.subheadline)
            }
            .padding(5)
            Spacer()
            VStack(alignment: .trailing, spacing:4) {
                Text("\(stock.price)")
                Button(stock.change, action: {
                    
                })
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(5)
            }
            .padding(5)
            
        }
        
    }
}

struct StockCellView_Previews: PreviewProvider {
    static var previews: some View {
        let stockViewModel = StockViewModel(stock: .init(symbol: "amazon", description: "test", price: 200.0, change: "-2.5"))
        StockCellView(stock: stockViewModel)
    }
}
