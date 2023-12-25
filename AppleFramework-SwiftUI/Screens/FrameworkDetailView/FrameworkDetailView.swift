//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by Omar on 25/12/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    //MARK: properties
    var framework : Framework
//    @Binding var isShowingDetailView : Bool
    var body: some View {
        VStack{
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
//            Spacer()
            FrameworkTitleView(framework:framework)
            Text(framework.description)
                .font(.body)
                .multilineTextAlignment(.center)
            Spacer()
            
            Link(destination: URL(string: framework.urlString)!) {
//                Text("Learn More")
//                    .frame(width: 280, height: 70)
//                    .background(Color.red.gradient)
//                    .foregroundColor(.white)
//                    .font(.system(size: 30,weight: .semibold))
//                    .cornerRadius(10)
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .foregroundColor(.white)
            .background(Color.red.gradient)
            .cornerRadius(10)
            Spacer()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework
                            //, isShowingDetailView: .constant(false)
        )
            .preferredColorScheme(.dark)
    }
}
