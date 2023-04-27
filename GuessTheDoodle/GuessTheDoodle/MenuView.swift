//
//  MenuView.swift
//  GuessTheDoodle
//
//  Created by MacBook 26 on 27/04/23.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchManager : MatchManager
    var body: some View {
        VStack{
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(30)
            
            Spacer()
            
            Button{
                //TODO: Start Matchmaking menu
            }label: {
                Text("Play")
                    .font(.largeTitle)
                    .bold()
            }
            //El siguiente contenido lo que hace es verificar si esta autenticado, sino entonces deshabilita el boton
            .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
            .padding(.vertical,20)
            .padding(.horizontal,100)
            //Le asignamos un fondo
            .background(
                //Con esto delimitamos el contenido a una capsula como ovalo
                Capsule(style: .circular)
                    //Agregamos el color definido en Assets
                    .fill(Color("playBtn"))
            )
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(matchManager: MatchManager())
    }
}
