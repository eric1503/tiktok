//
//  CardView.swift
//  tiktok
//
//  Created by Stephen Giovanni Saputra on 10/04/23.
//

import SwiftUI

struct CardView: View {
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 5)
            Text(text)
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding()
        }
    }
}
