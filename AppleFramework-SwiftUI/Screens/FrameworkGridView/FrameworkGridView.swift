//
//  FrameworkGridView.swift
//  AppleFramework-SwiftUI
//
//  Created by Omar on 24/12/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var vm = FrameworkGridViewModel()
    
    var columns = [GridItem](repeating: GridItem(.flexible()), count: 3)
    var body: some View {
//        NavigationView { // basiclly is like navigationView in UIKit
//            ScrollView{
//                LazyVGrid(columns: columns ){
//                    ForEach(MockData.frameworks){framework in
//                        FrameworkTitleView(framework: framework)
//                            .onTapGesture {
//                                vm.selectedFramework = framework
//                            }
//                    }
//                }
//            }
//            .navigationTitle("🍎 Frameworks")
//            .sheet(isPresented: $vm.isShowingDetailView) {
//                FrameworkDetailView(framework: vm.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $vm.isShowingDetailView)
//            }
//        }
        NavigationView {
            List{
                ForEach(MockData.frameworks){framework in
                    NavigationLink(
                        destination:FrameworkDetailView(framework: framework
                                                        ,isShowingDetailView: $vm.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 Frameworks")
//            .sheet(isPresented: $vm.isShowingDetailView) {
//                FrameworkDetailView(framework: vm.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $vm.isShowingDetailView)
//            }
        }
        .tint(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
