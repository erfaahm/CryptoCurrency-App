//
//  AllCoinView.swift
//  CryptoCurrency App
//
//  Created by Erfan on 9/25/22.
//

import SwiftUI

struct AllCoinView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack{
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack{
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

//struct AllCoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinView()
//    }
//}
