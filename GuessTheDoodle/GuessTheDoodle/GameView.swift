//
//  GameView.swift
//  GuessTheDoodle
//
//  Created by MacBook 26 on 27/04/23.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager:MatchManager
    @State var drawingGuess = ""
    @State var eraserEnabled = false
    
    func makeGuess(){
        //TODO: submit the guess
    }
    
    var body: some View {
        ZStack{
            //El siguiente servira para el teclado
            GeometryReader{ _ in
                Image(matchManager.currentlyDrawing ? "drawBg" : "guesserBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .scaleEffect(1.1)
                
                VStack{
                    topBar
                    
                    ZStack{
                        //En este caso lo que hacemos es mandar a llamar el canva de draw
                        DrawingView(matchManager: matchManager, eraserEnabled: $eraserEnabled)
                            //Aspect Radio reducido para que sea un tamano pequeno
                            .aspectRatio(1, contentMode: .fit)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 4))
                    }
                }
            }
        }
    }
    
    var topBar: some View{
        ZStack{
            HStack{
                Button{
                    //TODO: Disconnect from game
                } label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .font(.largeTitle)
                        .tint(Color(matchManager.currentlyDrawing ? "primaryYellow" : "primaryPurple"))
                }
                Spacer()
                Label("\(matchManager.remainingTime)",systemImage: "clock.fill")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color(matchManager.currentlyDrawing ? "primaryYellow" : "primaryPurple"))
            }
        }.padding(.vertical,15)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(matchManager:MatchManager())
    }
}
