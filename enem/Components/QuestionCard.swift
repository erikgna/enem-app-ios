//
//  QuestionCard.swift
//  enem
//
//  Created by Erik Na on 01/02/23.
//

import SwiftUI

struct QuestionCard: View {
    var text: String
    var isSelected: Bool
    var isRight: Bool
    @Binding var isAnswer: Bool
    
    func selectBorderColor() -> Color{
        if(isSelected && !isAnswer){
            return Color.blue
        }
        else if(isRight && isAnswer){
            return Color.green;
        }
        else if(!isRight && isAnswer){
            return Color.red;
        }
        else{
            return Color.white
        }
    }
    
    var body: some View {
        if(text.contains("https://")){
            Text(text)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white).padding(.vertical, 8)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(selectBorderColor(), lineWidth: 2)
            ).padding(.bottom, 8)
        }else{
            Text(text)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white).padding(.vertical, 8)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(selectBorderColor(), lineWidth: 2)
                ).padding(.bottom, 8)
        }
    }
}

