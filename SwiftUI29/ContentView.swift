//
//  ContentView.swift
//  SwiftUI29
//
//  Created by Rohit Saini on 07/08/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TopView()
            BottomView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TopView:View{
    var body: some View{
        ZStack{
            Color.blue.opacity(0.7).edgesIgnoringSafeArea(.top)
            VStack(spacing: 15){
                HStack(spacing: 15){
                    Text("Chat").fontWeight(.heavy).foregroundColor(.white)
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "magnifyingglass").resizable().frame(width:30,height: 30).foregroundColor(.white)
                    }
                    Button(action: {
                        
                    }) {
                        Image(systemName: "ellipsis.circle").resizable().frame(width:30,height: 30).foregroundColor(.white).foregroundColor(.white)
                    }
                }
                .padding()
                MiddleView().clipShape(Rounded())
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            
        }
        
    }
}

struct MiddleView:View{
    var body: some View{
        GeometryReader{ geo in
            List(0..<20){ _ in
                HStack{
                    Image("1").resizable().frame(width: 50, height: 50).aspectRatio(contentMode: ContentMode.fit).clipShape(Circle())
                    VStack(alignment: .leading,spacing: 15){
                        Text("Rohit Saini").fontWeight(.heavy)
                        Text("Lot to learn at this planet so i am just trying").fontWeight(.medium).lineLimit(1)
                        
                    }
                    Spacer()
                    VStack{
                        Text("12:46 PM").fontWeight(.heavy)
                        Spacer()
                    }
                }.padding()
                 
            }
        }
    }
}

struct BottomView:View{
    var body: some View{
        HStack(spacing: 200){
            Button(action: {
                
            }) {
                Image(systemName: "message.fill").resizable().frame(width:30,height: 30).foregroundColor(.blue).opacity(0.7)
            }
            Button(action: {
                
            }) {
                Image(systemName: "person.fill").resizable().frame(width:30,height: 30).foregroundColor(.gray)
            }
        }.padding()
    }
}

struct Rounded:Shape{
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft], cornerRadii: CGSize(width: 55, height: 55))
        return Path(path.cgPath)
    }
}
