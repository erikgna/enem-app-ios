//
//  HomeScreen.swift
//  enem
//
//  Created by Erik Na on 30/01/23.
//

import SwiftUI

struct HomeScreen: View {
    private var yearsFirst = ["2011", "2013", "2015", "2017", "2019",  "2022"]
    private var yearsSecond = ["2012", "2014", "2016", "2018",  "2020"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Logo()
                Text("Selecione as áreas desejadas").foregroundColor(.white).fontWeight(.medium).padding(.vertical, 12).font(.system(size: 20))
                VStack{
                    AreaCard(title: "Ciências Humanas \ne suas Tecnologias")
                    AreaCard(title: "Matemática e suas\nTecnologias")
                    AreaCard(title: "Ciências da Natureza\ne suas Tecnologias")
                    AreaCard(title: "Linguagens, Códigos\ne suas Tecnologias")
                }
                Text("Selecione os anos desejados").foregroundColor(.white).fontWeight(.medium).padding(.vertical, 16).font(.system(size: 20))
                HStack(alignment: .top){
                    VStack{
                        ForEach(yearsFirst, id: \.self) {year in
                            HStack{
                                CheckBox()
                                Text(year).foregroundColor(.white).fontWeight(.semibold).padding(.leading, 8)
                            }
                        }
                    }
                    VStack{
                        ForEach(yearsSecond, id: \.self) {year in
                            HStack{
                                CheckBox()
                                Text(year).foregroundColor(.white).fontWeight(.semibold).padding(.leading, 8)
                            }
                        }
                    }.padding(.leading, 16)
                }.padding(.bottom, 24)
                PrimaryButton(text: "Gerar Perguntas", action: {}).padding(.bottom, 8)
                SecondaryButton(text: "Gerar Perguntas Aleatoriamente", action: {})
                
            }.padding().frame(maxHeight: .infinity)
        }.background(Color.darkBlue)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
