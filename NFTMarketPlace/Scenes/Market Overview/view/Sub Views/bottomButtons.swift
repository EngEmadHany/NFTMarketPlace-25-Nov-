//
//  bottomButtons.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 23/11/2022.
//

import SwiftUI

struct bottomButtons: View {
    @State var buttonBuy: Bool = false
    @State var buttonSell: Bool = false
    var body: some View {
        HStack(){
            Group{
                Button {
                    buttonBuy.toggle()
                } label: {
                    Rectangle()
                        .foregroundColor(Color("#44D7B6"))
                        .frame(width: 175, height: 47)
                        .cornerRadius(4)
                        .overlay{
                            Text("Buy")
                                .font(.rubikMedium(12))
                                .foregroundColor(Color.white)
                        }.padding(.leading, 10)
                }
                
            }.sheet(isPresented: $buttonBuy) {
                buyView()
                    .presentationDetents([.fraction(0.50)])
            }
            Spacer()
                .frame(width: 0)
            Group{
                Button {
                    buttonSell.toggle()
                } label: {
                    Rectangle()
                        .foregroundColor(Color("#FD405E"))
                        .frame(width: 175, height: 47)
                        .cornerRadius(4)
                        .overlay{
                            Text("Sell")
                                .font(.rubikMedium(12))
                                .foregroundColor(Color.white)
                        }.padding(.leading, 10)
                    
                }
            }.sheet(isPresented: $buttonSell) {
                sellView()
                    .presentationDetents([.fraction(0.50)])
            }
        }.padding(.bottom, 50)
    }
}
//        .presentationDetents([.fraction(0.27)])
    
struct buyView: View{
    @Environment(\.presentationMode) var presentationMode
    @State var slider: Double = 0
    @State private var presentAlert = false
    var body: some View{
        ZStack{
            Color("#111213")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Group{
                    HStack{
                        Spacer()
                        Text("Buy")
                            .font(.rubikMedium(15))
                            .foregroundColor(.white)
                        Spacer()
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .font(.rubikMedium(12))
                                .foregroundColor(.white)
                                .padding(.trailing,13)
                        }
                    }.padding(10)
                    Spacer()
                        .frame(height: 25)
                    HStack(){
                        Text("0.0261")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color.white)
                            .background(
                                Rectangle()
                                    .foregroundColor(Color("#1A1A1D"))
                                    .frame(width: 180, height: 47)
                                    .cornerRadius(4)
                            )
                            .padding(.leading, 22)
                        Spacer()
                            .frame(width: 120)
                        Text("Limit Price")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color.white)
                            .background(
                                Rectangle()
                                    .foregroundColor(Color("#1A1A1D"))
                                    .frame(width: 155, height: 47)
                                    .cornerRadius(4)
                            ).padding(.trailing, 6)
                        
                        Image(systemName: "info.circle")
                            .foregroundColor(Color.white)
                        
                    }
                }
                Spacer()
                    .frame(height: 30)
                Text("Amount")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("#1A1A1D"))
                            .frame(width: 370, height: 47)
                            .cornerRadius(4)
                    )
                    .padding( 12)
                Spacer()
                    .frame(height: 35)
                Slider(value: $slider,in: 1...5 , step: 1,
                minimumValueLabel:
                 Text("0")
                    .font(.rubikMedium(12))
                   .foregroundColor(.white),
                   maximumValueLabel:
                        Text("100%")
                    .font(.rubikMedium(12))
                    .foregroundColor(.white)
                       ,
                   label: {
                   
                 }
                ).padding(.horizontal)
                    .accentColor(.white)
                Spacer()
                    .frame(height: 30)
                Text("Price(INAN)")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("#1A1A1D"))
                            .frame(width: 370, height: 47)
                            .cornerRadius(4)
                    )
                    .padding( 12)
                
                HStack{
                    Text("Available")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("63454.54 INAN")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    Image(systemName: "plus.circle.fill")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.red)
                }.padding( 12)
                Spacer()
                    .frame(height: 7)
                Button {
                    presentAlert.toggle()
                } label: {
                    Rectangle()
                        .foregroundColor(Color("#44D7B6"))
                        .frame(width: 370, height: 47)
                        .cornerRadius(4)
                        .overlay(
                            Text("Buy")
                                .font(.rubikMedium(12))
                                .foregroundColor(Color.white)
              )
          } .alert("", isPresented: $presentAlert, actions: {},
                   message: {
              alertView()
              
          }
          )}
      }
    }
}


struct sellView: View{
    @Environment(\.presentationMode) var presentationMode
    @State var slider: Double = 0
    @State private var presentAlert = false
    var body: some View{
        ZStack{
            Color("#111213")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Group{
                    HStack{
                        Spacer()
                        Text("Sell")
                            .font(.rubikMedium(15))
                            .foregroundColor(.white)
                        Spacer()
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .font(.rubikMedium(12))
                                .foregroundColor(.white)
                                .padding(.trailing,13)
                        }
                    }.padding(10)
                    Spacer()
                        .frame(height: 25)
                    HStack(){
                        Text("0.0261")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color.white)
                            .background(
                                Rectangle()
                                    .foregroundColor(Color("#1A1A1D"))
                                    .frame(width: 180, height: 47)
                                    .cornerRadius(4)
                            )
                            .padding(.leading, 22)
                        Spacer()
                            .frame(width: 120)
                        Text("Limit Price")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color.white)
                            .background(
                                Rectangle()
                                    .foregroundColor(Color("#1A1A1D"))
                                    .frame(width: 155, height: 47)
                                    .cornerRadius(4)
                            ).padding(.trailing, 6)
                        
                        Image(systemName: "info.circle")
                            .foregroundColor(Color.red)
                        
                    }
                }
                Spacer()
                    .frame(height: 30)
                Text("Amount")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("#1A1A1D"))
                            .frame(width: 370, height: 47)
                            .cornerRadius(4)
                    )
                    .padding( 12)
                Spacer()
                    .frame(height: 35)
                Slider(value: $slider,in: 1...5 , step: 1,
                minimumValueLabel:
                 Text("0")
                    .font(.rubikMedium(12))
                   .foregroundColor(.white),
                   maximumValueLabel:
                        Text("100%")
                    .font(.rubikMedium(12))
                    .foregroundColor(.white)
                       ,
                   label: {
                   
                 }
                ).padding(.horizontal)
                 .accentColor(Color("#FD405E"))
                Spacer()
                    .frame(height: 30)
                Text("202.2 INAN")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("#1A1A1D"))
                            .frame(width: 370, height: 47)
                            .cornerRadius(4)
                    )
                    .padding( 12)
                
                HStack{
                    Text("Available")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("63454.54 INAN")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    Image(systemName: "plus.circle.fill")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.red)
                }.padding( 12)
                Spacer()
                    .frame(height: 7)
                Button {
                    presentAlert.toggle()
                } label: {
                    Rectangle()
                        .foregroundColor(Color("#FD405E"))
                        .frame(width: 370, height: 47)
                        .cornerRadius(4)
                        .overlay(
                            Text("Sell")
                                .font(.rubikMedium(12))
                                .foregroundColor(Color.white)
              )
          } .alert("", isPresented: $presentAlert, actions: {},
                   message: {
              alertView()
              
          }
          )}
      }
    }
}

struct alertView: View{
  
    var body: some View{
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            HStack{
                Text("Confirmation")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
//                Text("Limit buy order successfully placed!")
//                    .font(.rubikMedium(12))
//                    .foregroundColor(Color("#B7B7B7"))
               
            }
        }.frame(width: 200, height: 200)
        .background(Color.black)
        .cornerRadius(20)
    }
}
struct bottomButtons_Previews: PreviewProvider {
    static var previews: some View {
        buyView()
    }
}
