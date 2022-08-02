//
//  ContentView.swift
//  Pizza-Shop-UI
//
//  Created by Daniel Spalek on 02/08/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    var body: some View {
        switch viewModel.currentPage{
        case .home:
            Home().environmentObject(viewModel)
        default:
            Home().environmentObject(viewModel)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewDevice("iPad mini (6th generation)")
    }
}
