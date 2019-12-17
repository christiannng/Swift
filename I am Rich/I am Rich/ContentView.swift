//
//  ContentView.swift
//  I am Rich
//
//  Created by Christian Nguyen on 2019-12-17.
//  Copyright © 2019 Christian McAwesome. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("I am Rich")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)

                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)

            }
        }
        
    }
}

//Test with preview only
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //Change the preview device. Option Click to find more name
        //ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        ContentView()
    }
}
