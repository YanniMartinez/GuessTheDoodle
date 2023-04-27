//
//  GameOverView.swift
//  GuessTheDoodle
//
//  Created by MacBook 26 on 27/04/23.
//

import SwiftUI

struct GameOverView: View {
    @ObservedObject var matchManager : MatchManager
    var body: some View {
        VStack{
            Spacer()
            
            Image("gameOver")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 70)
                .padding(.vertical)
            
            Text("Score: \(matchManager.score)")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("primaryYellow"))
            
            Spacer()
            
            Button{
                //TODO: Go back to Menu
            }label: {
                Text("Menu")
                    .foregroundColor(Color("menuBtn"))
                    .brightness(-0.4)
                    //Define color de letra
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
            .padding(.horizontal,50)
            //Le asignamos un fondo
            .background(
                //Con esto delimitamos el contenido a una capsula como ovalo
                Capsule(style: .circular)
                    //Agregamos el color definido en Assets
                    //.fill(Color("playBtn"))
                
                    //La siguiente forma lo que hace es evaluar y con un ternario definir el color del boton
                    .fill(Color("menuBtn"))
            )
            
            Spacer()
        }
        //Definiendo imagen como fondo
        .background(
            Image("gameOverBg")
                .resizable()
                .scaledToFill()
                .scaleEffect(1.1) //Define la escala
        ).ignoresSafeArea()
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView(matchManager : MatchManager())
    }
}
