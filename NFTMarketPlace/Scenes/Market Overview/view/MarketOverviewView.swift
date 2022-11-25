//
//  MarketOverviewView.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct MarketOverviewView: View {
    @State private var categoryType: MOVTopCategorys = .overView
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            navigationView()
                .frame(width: 50, height:50)
                .background(Color.black)
            MarketOverviewHeaderView()
            marketPriceOverView(categorysType: $categoryType)
            Spacer()
            if categoryType == .overView{
                bottomButtons()
            }
        }.navigationBarBackButtonHidden(true)
        .padding(.top)
        .setBackground()
        .ignoresSafeArea()
    }
    
    func navigationView() -> some View {
        return HStack {
                //back button
                Button(action: {
                  self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Spacer()
                  Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .background(
                        Rectangle()
                            .foregroundColor(.white).opacity(0)
                        ).padding(5)
                })
                  
                Spacer()
                      .frame(width: 330)
              }
//              HStack {
//                //navigation title
//                Text("Statistics")
//                  .font(.rubikMedium(12))
//                  .foregroundColor(.white)
//              }
            
    }
}


struct marketOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        MarketOverviewView()
    }
}
