//
//  SecondaryButton.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct SecondaryButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(text).padding(.vertical, 8).padding(.horizontal, 8).foregroundColor(.white).fontWeight(.semibold).font(.system(size: 18)).frame(maxWidth: .infinity)
        }.foregroundColor(.white).background(Color.white.opacity(0)).border(.white).cornerRadius(4).padding(.bottom, 16)
    }
}
