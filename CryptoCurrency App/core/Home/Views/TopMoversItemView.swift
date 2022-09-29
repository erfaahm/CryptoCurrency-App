//
//  TopMoversItemView.swift
//  CryptoCurrency App
//
//  Created by Erfan on 9/25/22.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin : Coin
    var body: some View {
        VStack(alignment: .leading){
            //Coin image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            //Coin Info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text("\(coin.currentPrice.toCurrency())")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            //coin percent change
            Text("\(coin.priceChangePercentage24H.toPercentString())")
                .font(.caption)
                .padding(.leading, 6)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}
