//
//  Services.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 29/07/2022.
//

import Foundation

class Services {
    func getStocks(completion:@escaping ([Stok]?)->()) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let stocks = try? JSONDecoder().decode([Stok].self, from: data)
            if let stocks = stocks {
                completion(stocks)
            } else {
                completion(nil)
            }
            
        }).resume()
    }
}
