//
//  HomeView.swift
//  CryptoCurrency App
//
//  Created by Erfan on 9/25/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                //top coin
                TopMoversView(viewModel: viewModel)
                Divider()
                // All coin view
                AllCoinView(viewModel: viewModel)
            }
            .navigationTitle("Live prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
