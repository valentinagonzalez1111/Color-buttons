//
//  ContentView.swift
//  Color buttons
//
//  Created by Apprenant 18 on 17/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var colorBackground = Color.white
    var body: some View {
        ZStack {
            colorBackground
            HStack {
                SymbolLine(colorFondo: $colorBackground, couleur: .red, texto: "roja")
                SymbolLine(colorFondo: $colorBackground, couleur: .green, texto: "verde")
                SymbolLine(colorFondo: $colorBackground, couleur: .blue, texto: "azul")
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

struct SymbolLine: View {
    
    @Binding var colorFondo: Color
    var couleur: Color
    var texto: String
   
    
    var body: some View {
        HStack(spacing: 50)  {
            HStack{
                Button {
                    colorFondo = couleur
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 110.0, height: 60.0)
                            .foregroundColor(couleur)
                        Label(texto, systemImage: "eyedropper")
                            .imageScale(.small)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
                .foregroundColor(.white)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
