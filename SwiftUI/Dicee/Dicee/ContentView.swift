//
//  ContentView.swift
//  Dicee
//
//  Created by Christian Nguyen on 2019-12-17.
//  Copyright © 2019 Christian McAwesome. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@State to make it mutable. Make a new copy
    //Create again the ContentView if the @State var is changed
    @State var leftDiceNo = 1
    @State var rightDiceNo = 1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    
                    DiceView(n: leftDiceNo)
                    DiceView(n: rightDiceNo)
                    
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    
                    self.leftDiceNo = Int.random(in: 1...6)
                    self.rightDiceNo = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
        
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


