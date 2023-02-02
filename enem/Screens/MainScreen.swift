//
//  MainScreen.swift
//  enem
//
//  Created by Erik Na on 31/01/23.
//

import SwiftUI

struct MainScreen: View {
    @State var screen: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            if(screen == 0){
                HomeScreen().padding(.bottom, 64)
            }
            if(screen == 1){
                LoginScreen().padding(.bottom, 64)
            }
            BottomNavigation(screen: $screen)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
