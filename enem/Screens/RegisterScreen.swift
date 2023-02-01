//
//  RegisterScreen.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct RegisterScreen: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State var isSecurePassword: Bool = true
    @State var isSecureConfirmPassword: Bool = true
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Logo().padding(.bottom, 32)
                Text("Registro").foregroundColor(.white).fontWeight(.bold).font(.system(size: 32))
                Text("Crie uma conta para ter acesso ao seu histórico de questões").padding(.bottom, 24).foregroundColor(.white)
                
                VStack{
                    HStack{
                        Image(systemName: "person").foregroundColor(.white)
                        TextField("", text: $email).foregroundColor(.white).accentColor(.white).autocorrectionDisabled(true).textInputAutocapitalization(.never)
                            .placeholder(when: email.isEmpty) {
                                Text("Nome completo").foregroundColor(.gray)
                        }
                    }
                    Divider().background(.white).padding(.bottom, 16)
                    
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
                        if(isSecurePassword){
                            SecureField("", text: $password).foregroundColor(.white).accentColor(.white)
                                .placeholder(when: password.isEmpty) {
                                    Text("Senha").foregroundColor(.gray)
                            }
                            Button(action: {
                                isSecurePassword = false
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
                                isSecurePassword = true
                            }){
                                Image(systemName: "eye.slash").foregroundColor(.white)
                            }
                        }
                    }
                    Divider().background(.white).padding(.bottom, 16)
                    
                    HStack{
                        Image(systemName: "lock").foregroundColor(.white)
                        if(isSecureConfirmPassword){
                            SecureField("", text: $password).foregroundColor(.white).accentColor(.white)
                                .placeholder(when: password.isEmpty) {
                                    Text("Confirmar senha").foregroundColor(.gray)
                            }
                            Button(action: {
                                isSecureConfirmPassword = false
                            }){
                                Image(systemName: "eye").foregroundColor(.white)
                            }
                        }
                        else{
                            TextField("", text: $password).foregroundColor(.white).accentColor(.white)
                                .placeholder(when: password.isEmpty) {
                                    Text("Confirmar senha").foregroundColor(.gray)
                            }
                            Button(action: {
                                isSecureConfirmPassword = true
                            }){
                                Image(systemName: "eye.slash").foregroundColor(.white)
                            }
                        }
                    }
                    Divider().background(.white).padding(.bottom, 16)
                }
          
                PrimaryButton(text: "Entrar", action: {}).padding(.bottom, 8)
                HStack{
                    Rectangle().foregroundColor(.white).frame(height: 1)
                    Text("ou").foregroundColor(.white)
                    Rectangle().foregroundColor(.white).frame(height: 1)
                }.padding(.bottom, 8)
                SecondaryButton(text: "Criar nova conta", action: {})
            }.frame(maxHeight: .infinity).padding(.horizontal, 16)
        }.background(Color.darkBlue)
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
