//
//  ContentView.swift
//  ChristianCard
//
//  Created by Christian Nguyen on 2019-12-17.
//  Copyright © 2019 Christian McAwesome. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("David")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Christian Nguyen")
                    .font(Font.custom("CourierPrime-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+1 647 707 7942", imageName: "phone.fill")
                InfoView(text: "christiannguyen.wk@gmail.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


