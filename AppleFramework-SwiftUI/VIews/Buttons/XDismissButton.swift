//
//  XDismissButton.swift
//  AppleFramework-SwiftUI
//
//  Created by Omar on 25/12/2023.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView : Bool
    var body: some View {
        HStack{
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 40 , height: 40)
            }.padding(.horizontal)
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
