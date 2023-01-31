//
//  LoginScreen.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email: String = ""
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Logo()
                Text("Login").foregroundColor(.white).fontWeight(.bold).font(.system(size: 32))
                Text("Entre na sua conta para continuar").padding(.bottom, 24).foregroundColor(.white)
                TextField("Email", text: $email)
                PrimaryButton(text: "Entrar", action: {}).padding(.bottom, 6)
                SecondaryButton(text: "Criar nova conta", action: {})
            }.frame(maxHeight: .infinity).padding(.horizontal, 16)
        }.background(Color.darkBlue)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
