//
//  enumChoose.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 23/11/2022.
//

import Foundation


enum MOVTopCategorys: String, CaseIterable {
    
    case overView
    case info
    case nfTs
    
    var tabText: String {
        self.rawValue.capitalized
    }
}
