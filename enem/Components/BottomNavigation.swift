//
//  BottomNavigation.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct BottomNavigation: View {
    @Binding var screen: Int
    
    var body: some View {
            VStack{
                Divider().background(.white).frame(minHeight: 8)
                HStack(){
                    VStack{
                        if(screen.self == 0){
                            Image(systemName: "house.fill").resizable().frame(width: 24, height: 24).foregroundColor(.blue)
                        }else{
                            Image(systemName: "house.fill").resizable().frame(width: 24, height: 24).foregroundColor(.white)
                        }
                        if(screen.self == 0){
                            Text("Início").fontWeight(.medium).foregroundColor(.blue)
                        }
                        else{
                            Text("Início").fontWeight(.medium).foregroundColor(.white)
                        }
                    }.padding(.leading, 64).padding(.top, 8).onTapGesture {
                        screen = 0
                    }
                    Spacer()
                    VStack{
                        if(screen.self == 1){
                            Image(systemName: "person.fill").resizable().frame(width: 24, height: 24).foregroundColor(.blue)
                        }else{
                            Image(systemName: "person.fill").resizable().frame(width: 24, height: 24).foregroundColor(.white)
                        }
                        if(screen.self == 1){
                            Text("Entrar").fontWeight(.medium).foregroundColor(.blue)
                        }
                        else{
                            Text("Entrar").fontWeight(.medium).foregroundColor(.white)
                        }
                    }.padding(.trailing, 64).padding(.top, 8).onTapGesture {
                        screen = 1
                    }
                }
            }.background(Color.darkBlue)
    }
}
