//
//  QuestionScreen.swift
//  enem
//
//  Created by Erik Na on 01/02/23.
//

import SwiftUI

struct QuestionScreen: View {
    @State private var isSelected: String = ""
    @State private var isRight: String = ""
    @State private var isAnswer: Bool = false
    
    func seeAnswer(){
        isAnswer = true
        isRight = "a"
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Logo().padding(.bottom, 32)
                Text("Texto informativo blablabla").foregroundColor(.white)
                Text("Pergunta blablabla").foregroundColor(.white).padding(.vertical, 24)

                QuestionCard(text: "texto um", isSelected: isSelected == "a", isRight: isRight == "a", isAnswer: $isAnswer).onTapGesture {
                    isSelected = "a"
                }
                QuestionCard(text: "texto um", isSelected: isSelected == "b", isRight: isRight == "b", isAnswer: $isAnswer).onTapGesture {
                    isSelected = "b"
                }
                QuestionCard(text: "texto um", isSelected: isSelected == "c", isRight: isRight == "c", isAnswer: $isAnswer).onTapGesture {
                    isSelected = "c"
                }
                QuestionCard(text: "texto um", isSelected: isSelected == "d", isRight: isRight == "d", isAnswer: $isAnswer).onTapGesture {
                    isSelected = "d"
                }
                QuestionCard(text: "texto um", isSelected: isSelected == "e", isRight: isRight == "e", isAnswer: $isAnswer).onTapGesture {
                    isSelected = "e"
                }
                

                PrimaryButton(text: "Ver resposta", action: seeAnswer).padding(.bottom, 8).padding(.top, 16)
                SecondaryButton(text: "Próxima pergunta", action: {})
                
            }.padding().frame(maxHeight: .infinity)
        }.background(Color.darkBlue)
    }
}

struct QuestionScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuestionScreen()
    }
}
