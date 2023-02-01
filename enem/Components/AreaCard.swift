//
//  AreaCard.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct AreaCard: View {
    var title: String
    
    var body: some View {
        VStack{
            Image(systemName: "plus").foregroundColor(.white).padding(.top, 24)
            Text(title).foregroundColor(.white).padding(.top, 8).padding(.bottom, 16).frame(maxWidth: .infinity).multilineTextAlignment(.center)
        }.overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.blue, lineWidth: 2)
        ).padding(.bottom, 8)
    }
}
