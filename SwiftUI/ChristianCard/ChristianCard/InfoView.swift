//
//  InfoView.swift
//  ChristianCard
//
//  Created by Christian Nguyen on 2019-12-17.
//  Copyright © 2019 Christian McAwesome. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(HStack {
                
                Image(systemName: imageName)
                    .foregroundColor(.green)
                
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
