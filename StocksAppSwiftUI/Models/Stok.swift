//
//  Stok.swift
//  StocksAppSwiftUI
//
//  Created by Developer on 29/07/2022.
//

import Foundation

struct Stock:Decodable {
    let symbol:String
    let description:String
    let price:Double
    let change:String
}
