//
//  ContentView.swift
//  enem
//
//  Created by Erik Na on 30/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Logo()
                Text("Treine para o ENEM com centenas das questões passadas nos últimos anos, e veja seu histórico de acertos e erros.").foregroundColor(.white).padding(.vertical, 16)
                PrimaryButton(text: "Entrar na conta", action: {}).padding(.bottom, 6)
                SecondaryButton(text: "Criar nova conta", action: {})
                Button(action: {}){
                    Text("Entrar de forma anonima").frame(maxWidth: .infinity).foregroundColor(.white).fontWeight(.semibold).font(.system(size: 18)).underline()
                }
            }.padding().frame(maxHeight: .infinity)
        }.background(Color.darkBlue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
