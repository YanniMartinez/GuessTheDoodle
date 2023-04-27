//
//  MatchManager.swift
//  GuessTheDoodle
//
//  Created by MacBook 26 on 27/04/23.
//

import Foundation

//Le indicamos que se trata de un objeto observable porque nos interesa
//Saber que es lo que sucede al objeto y llegar a actualizar vista de forma
//Dinamica
class MatchManager: ObservableObject{
    @Published var inGame = false
    @Published var inGameOver = false
    @Published var authenticationState = PlayerAuthState.authenticating
    
    
    @Published var currentlyDrawing = false
    @Published var drawPrompt = ""
    //Indica que se trata de un arreglo de adivinaciones anteriores
    @Published var pastGuesses = [PastGuess]()
    
    @Published var score = 0
    //Hace referencia a la variable especificada en /misc.swift
    @Published var remainingTime = maxTimeRemaining
}
