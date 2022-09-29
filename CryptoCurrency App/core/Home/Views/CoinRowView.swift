//
//  RowCoinView.swift
//  CryptoCurrency App
//
//  Created by Erfan on 9/25/22.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    var body: some View {
        HStack{
            //Market cap rank
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
            
            //IMage
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //Coin name info
            VStack(alignment: .leading, spacing: 4){
                Text("\(coin.name)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            Spacer()
            
            //Coin price info
            VStack(alignment: .trailing, spacing: 4){
                Text("\(coin.currentPrice.toCurrency())")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text("\(coin.marketCapChangePercentage24H.toPercentString())")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

