//
//  FrameworkGridViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by Omar on 25/12/2023.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView : Bool = false // once isShowingDetailView changed ,viewModel publish this change
}
