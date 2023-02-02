//
//  HistoryScreen.swift
//  enem
//
//  Created by Erik Na on 01/02/23.
//

import SwiftUI

struct HistoryCard: View {
    var correct: Bool
    var text: String
    
    func selectBorderColor(correct: Bool) -> Color{
        if(correct){
            return Color.green
        }
        else{
            return Color.red
        }
    }
    
    var body: some View{
        Text(text)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(.white).padding(.vertical, 8)
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 4)
                .stroke(selectBorderColor(correct: false), lineWidth: 2)
            ).padding(.bottom, 8)
    }
}

struct HistoryPercentual: View {
    var correct: Bool
    var text: String
    
    func selectBorderColor(correct: Bool) -> Color{
        if(correct){
            return Color.green
        }
        else{
            return Color.red
        }
    }
    
    var body: some View{
        Text(text)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(.white).padding(.vertical, 8)
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 4)
                .stroke(selectBorderColor(correct: false), lineWidth: 2)
            ).padding(.bottom, 8)
    }
}

struct HistoryScreen: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Logo().padding(.bottom, 32)
                Text("Pontuação").foregroundColor(.white).fontWeight(.bold).font(.system(size: 24))
                Text("Questões respondidas").foregroundColor(.white).fontWeight(.bold).font(.system(size: 24))
                
                HistoryCard(correct: false, text: "Teste")

                PrimaryButton(text: "Apagar histórico", action: {} ).padding(.bottom, 8).padding(.top, 16)
                
            }.padding().frame(maxHeight: .infinity)
        }.background(Color.darkBlue)
    }
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen()
    }
}
