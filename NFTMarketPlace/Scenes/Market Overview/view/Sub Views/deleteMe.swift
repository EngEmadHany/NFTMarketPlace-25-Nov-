//
//  deleteMe.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 25/11/2022.
//

import SwiftUI

struct deleteMe: View {
    var items: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.fixed(50))
    ]
    
    
    var body: some View {
        VStack{
            LazyVGrid(columns: items) {
                Text("1000")
                Text("1000")
                }
                    
            }
        }
    }


struct deleteMe_Previews: PreviewProvider {
    static var previews: some View {
        deleteMe()
    }
}
