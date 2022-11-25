//
//  MarketNews.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 23/11/2022.
//

import SwiftUI

struct info: View{
    var items: [GridItem] = [
        GridItem(.fixed(100),alignment: .leading),
        GridItem(.fixed(100), alignment: .trailing)
    ]
    
    var body: some View{
        VStack{
            HStack{
            Text("Statistics")
                .font(.rubikMedium(12))
                .foregroundColor(Color("#DBDBDB"))
                Spacer()
            }.padding(.leading, 15)
            HStack {
                LazyVGrid(columns: items){
                    Text("Rank")
                     .font(.rubikMedium(12))
                     .foregroundColor(Color("#B7B7B7"))
                      
                    Text("#12")
                     .font(.rubikMedium(12))
                     .foregroundColor(Color.white)
                    
                    Text("Items")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("121")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    
                    
                    Text("Categories")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("Dance, Music")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    
                    
                    Text("Issue date")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("10 oct, 2022")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    
                    Text("All time high")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("0.0023")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                }
                LazyVGrid(columns: items){
                    Text("Market Cap")
                     .font(.rubikMedium(12))
                     .foregroundColor(Color("#B7B7B7"))
                      
                    Text("$232,232,323")
                     .font(.rubikMedium(12))
                     .foregroundColor(Color.white)
                    
                    Text("Circulation supply")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("12,232,222")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    
                    
                    Text("Max supply")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("10,232,232")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    
                    
                    Text("Total supply")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("20,232,233")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                    
                    Text("All time high")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#B7B7B7"))
                    
                    Text("1.2023")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.white)
                }
            }
            
            Spacer()
                .frame(height: 30)
            HStack{
                Text("Lastes News")
                    .foregroundColor(Color("#DBDBDB"))
                Spacer()
            }.padding(.leading, 15)
            
            // NEWS Card
            Group{
                HStack{
                    Image("newsImage1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 89, height:108 )
                    VStack(alignment: .leading){
                        Text("11 june at 12:21 am")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .padding(.top,7)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt .")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color("D8D8D8"))
                            .multilineTextAlignment(.leading)
                            .frame(width: 230,alignment: .leading)
                            .padding(.vertical,3)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt. Est deserunt placeat corrupti velitos ab ratione....")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .frame(width: 230,alignment: .leading)
                        
                        HStack{
                            Group{
                                
                             Image(systemName: "eye")
                                .font(.rubikMedium(7))
                                .foregroundColor(.white)
                            
                            Text("13.4m")
                                .font(.rubikMedium(12))
                                .foregroundColor(.white)
                            }
                            Spacer()
                                .frame(width:40)
                            Group{
                                Image(systemName: "ellipsis.message.fill")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("🔥")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("💩")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("2k")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                            }
                        }
                      
                    }.padding(.leading, 6)
                    Spacer()
                }.padding(.leading, 14)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 1)
                    }
            }
            Group{
                HStack{
                    Image("newsImage2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 89, height:108 )
                    VStack(alignment: .leading){
                        Text("11 june at 12:21 am")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .padding(.top,7)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt .")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color("D8D8D8"))
                            .multilineTextAlignment(.leading)
                            .frame(width: 230,alignment: .leading)
                            .padding(.vertical,3)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt. Est deserunt placeat corrupti velitos ab ratione....")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .frame(width: 230,alignment: .leading)
                        
                        HStack{
                            Group{
                                
                             Image(systemName: "eye")
                                .font(.rubikMedium(7))
                                .foregroundColor(.white)
                            
                            Text("13.4m")
                                .font(.rubikMedium(12))
                                .foregroundColor(.white)
                            }
                            Spacer()
                                .frame(width:40)
                            Group{
                                Image(systemName: "ellipsis.message.fill")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("🔥")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("💩")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("2k")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                            }
                        }
                      
                    }.padding(.leading, 6)
                    Spacer()
                }.padding(.leading, 14)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 1)
                    }
            }
            Group{
                HStack{
                    Image("newsImage3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 89, height:108 )
                    VStack(alignment: .leading){
                        Text("11 june at 12:21 am")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .padding(.top,7)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt .")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color("D8D8D8"))
                            .multilineTextAlignment(.leading)
                            .frame(width: 230,alignment: .leading)
                            .padding(.vertical,3)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt. Est deserunt placeat corrupti velitos ab ratione....")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .frame(width: 230,alignment: .leading)
                        
                        HStack{
                            Group{
                                
                             Image(systemName: "eye")
                                .font(.rubikMedium(7))
                                .foregroundColor(.white)
                            
                            Text("13.4m")
                                .font(.rubikMedium(12))
                                .foregroundColor(.white)
                            }
                            Spacer()
                                .frame(width:40)
                            Group{
                                Image(systemName: "ellipsis.message.fill")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("🔥")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("💩")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("2k")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                            }
                        }
                      
                    }.padding(.leading, 6)
                    Spacer()
                }.padding(.leading, 14)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 1)
                    }
            }
            Group{
                HStack{
                    Image("newsImage4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 89, height:108 )
                    VStack(alignment: .leading){
                        Text("11 june at 12:21 am")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .padding(.top,7)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt .")
                            .font(.rubikMedium(12))
                            .foregroundColor(Color("D8D8D8"))
                            .multilineTextAlignment(.leading)
                            .frame(width: 230,alignment: .leading)
                            .padding(.vertical,3)
                        
                        Text("Mujtaba amet molestiae modi reprehenderit loo ra lsan sunt. Est deserunt placeat corrupti velitos ab ratione....")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                            .frame(width: 230,alignment: .leading)
                        
                        HStack{
                            Group{
                                
                             Image(systemName: "eye")
                                .font(.rubikMedium(7))
                                .foregroundColor(.white)
                            
                            Text("13.4m")
                                .font(.rubikMedium(12))
                                .foregroundColor(.white)
                            }
                            Spacer()
                                .frame(width:40)
                            Group{
                                Image(systemName: "ellipsis.message.fill")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("🔥")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("120")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                                Spacer()
                                    .frame(width:12)
                                Text("💩")
                                    .font(.rubikMedium(15))
                                    .foregroundColor(.white)
                                Text("2k")
                                    .font(.rubikMedium(12))
                                    .foregroundColor(Color("#B7B7B7"))
                            }
                        }
                      
                    }.padding(.leading, 6)
                    Spacer()
                }.padding(.leading, 14)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 1)
                    }
            }
        }.background(Color.black)
            .ignoresSafeArea(.all)
    }
}


struct MarketNews_Previews: PreviewProvider {
    static var previews: some View {
        info()
    }
}
