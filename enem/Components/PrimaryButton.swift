//
//  PrimaryButton.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(text).padding(.vertical, 8).padding(.horizontal, 8).foregroundColor(.white).fontWeight(.semibold).font(.system(size: 18)).frame(maxWidth: .infinity)
        }.background(.blue).cornerRadius(4)
    }
}
