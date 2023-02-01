//
//  CheckBox.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct CheckBox: View {
    @State private var checked = false
    
    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square").resizable().frame(width: 20, height: 20)
            .foregroundColor(checked ? .blue : .white)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}
