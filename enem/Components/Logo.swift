//
//  Logo.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        HStack(){
            Image("icon")
                .resizable()
                .frame(width: 48, height: 48)
            Text("Unsolved").foregroundColor(.white).fontWeight(.bold).font(.system(size: 32))
        }
    }
}
