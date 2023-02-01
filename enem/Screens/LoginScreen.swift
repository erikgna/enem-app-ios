//
//  LoginScreen.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var isSecure: Bool = true
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Logo().padding(.bottom, 32)
                Text("Login").foregroundColor(.white).fontWeight(.bold).font(.system(size: 32))
                Text("Entre na sua conta para continuar").padding(.bottom, 24).foregroundColor(.white)
                
                HStack{
                    Image(systemName: "envelope").foregroundColor(.white)
                    TextField("", text: $email).foregroundColor(.white).accentColor(.white).autocorrectionDisabled(true).textInputAutocapitalization(.never)
                        .placeholder(when: email.isEmpty) {
                            Text("Email").foregroundColor(.gray)
                    }
                }
                Divider().background(.white).padding(.bottom, 16)
                HStack{
                    Image(systemName: "lock").foregroundColor(.white)
                    if(isSecure){
                        SecureField("", text: $password).foregroundColor(.white).accentColor(.white)
                            .placeholder(when: password.isEmpty) {
                                Text("Senha").foregroundColor(.gray)
                        }
                        Button(action: {
                            isSecure = false
                        }){
                            Image(systemName: "eye").foregroundColor(.white)
                        }
                    }
                    else{
                        TextField("", text: $password).foregroundColor(.white).accentColor(.white)
                            .placeholder(when: password.isEmpty) {
                                Text("Senha").foregroundColor(.gray)
                        }
                        Button(action: {
                            isSecure = true
                        }){
                            Image(systemName: "eye.slash").foregroundColor(.white)
                        }
                    }
                }
                Divider().background(.white).padding(.bottom, 16)
          
                PrimaryButton(text: "Entrar", action: {}).padding(.bottom, 6)
                SecondaryButton(text: "Criar nova conta", action: {})
                VStack{
                    HStack{
                        Rectangle().foregroundColor(.white).frame(height: 1)
                        Text("ou").foregroundColor(.white)
                        Rectangle().foregroundColor(.white).frame(height: 1)
                    }.padding(.bottom, 8)
                    Button(action: {}){
                        Text("Entrar de forma anonima").frame(maxWidth: .infinity).foregroundColor(.white).fontWeight(.semibold).font(.system(size: 18)).underline()
                    }
                }
            }.frame(maxHeight: .infinity).padding(.horizontal, 16)
        }.background(Color.darkBlue)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
