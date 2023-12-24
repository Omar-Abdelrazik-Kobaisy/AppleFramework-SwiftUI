//
//  FrameworkGridView.swift
//  AppleFramework-SwiftUI
//
//  Created by Omar on 24/12/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    var columns = [GridItem](repeating: GridItem(.flexible()), count: 3)
    var body: some View {
        NavigationView { // basiclly is like navigationView in UIKit
            ScrollView{
                LazyVGrid(columns: columns ){
                    ForEach(MockData.frameworks){framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
