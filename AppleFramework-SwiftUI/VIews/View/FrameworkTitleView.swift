//
//  FrameworkTitleView.swift
//  AppleFramework-SwiftUI
//
//  Created by Omar on 24/12/2023.
//

import SwiftUI

struct FrameworkTitleView: View {
    //MARK: properties
    let framework : Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90 , height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
