//
//  modifers.swift
//  NFT MarketPlace
//
//  Created by Emad Isaac on 23/11/2022.
//

import SwiftUI

struct modifers: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Hello, world1!",
                               destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
//            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
//            .navigationBarItems(
//                leading:
//                    HStack {
//                        Image(systemName: "person.fill")
//                        Image(systemName: "flame.fill")
//                    }
//
//
//                ,
//                trailing:
//                    NavigationLink(
//                    destination: MyOtherScreen(),
//                    label: {
//                        Image(systemName: "gear")
//                    })
//                    .accentColor(.red)
//            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                //.navigationBarHidden(true)
                .navigationBarItems(
                                trailing:
                                    NavigationLink(
                                    destination: MyOtherScreen(),
                                    label: {
                                        Image(systemName: "gear")
                                    })
                                    .accentColor(.red)
                            )
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Forward", destination: Text("3rd screen!"))
            }
        }
    }
}

struct modifers_Previews: PreviewProvider {
    static var previews: some View {
        newView()
    }
}


struct newView: View{
    @State private var isShowingDetailView = false
    var body: some View{
        
        NavigationView {
            VStack {
                NavigationLink(destination: secondView(), isActive: $isShowingDetailView) {
                    emptyView()
                    
                }
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
                }
            }
                        .navigationBarItems(
                            leading:
                                HStack {
                                    Image(systemName: "person.fill")
                                    Image(systemName: "flame.fill")
                                }
            
            
                            ,
                            trailing:
                                NavigationLink(
                                destination: MyOtherScreen(),
                                label: {
                                    Image(systemName: "gear")
                                })
                                .accentColor(.red)
                        )
        }
    }
    
}
struct emptyView: View{
   
    var body: some View{
 
            VStack {
                Text("Hello")
                }
            }
           
        
}
    
struct secondView: View{
   
    var body: some View{
 
            VStack {
                Text("Hello")
                }
            }
           
        
}

    
