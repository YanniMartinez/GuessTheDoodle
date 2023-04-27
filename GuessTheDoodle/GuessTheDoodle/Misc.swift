//
//  Misc.swift
//  GuessTheDoodle
//
//  Created by MacBook 26 on 27/04/23.
//

import Foundation

//Declaracion de objetos de uso diario
let dailyItems : [String] = ["cepillo de dientes", "pasta de dientes", "toalla", "jabón", "champú", "acondicionador", "gel de baño", "perfume", "crema hidratante", "maquinilla de afeitar", "espuma de afeitar", "desodorante", "cepillo para el pelo", "peine", "mascarilla", "guantes", "gorra", "paraguas", "botella de agua", "bolsa de almuerzo", "merienda", "pañuelos de papel", "tijeras", "cinta adhesiva", "libreta", "bolígrafos", "lápiz", "calculadora", "teléfono móvil", "cargador de teléfono móvil", "llaves", "monedero", "tarjetas de crédito", "dinero en efectivo", "pasaporte", "gafas de sol", "botiquín de primeros auxilios", "medicamentos", "termómetro", "mantas", "toallas de papel", "pañales", "toallitas húmedas", "leche", "huevos", "pan", "frutas", "verduras", "carne", "pescado", "pollo", "queso", "yogur", "cereales", "aceite de oliva", "vinagre", "sal", "pimienta", "salsa de tomate", "mostaza", "mayonesa", "kétchup", "miel", "azúcar", "harina", "levadura", "arroz", "fideos", "patatas", "maíz", "té", "café", "agua con gas", "refresco", "cerveza", "vino", "licor", "limpiador de ventanas", "detergente para la ropa", "suavizante de telas", "esponja", "toallas de papel", "paños de limpieza", "aspiradora", "escoba", "recogedor", "cubo de la basura", "bolsas de basura", "candado", "linterna", "velas", "fósforos", "extintor de incendios", "detector de humo", "extintor de humo", "paraguas", "gafas de seguridad", "guantes de trabajo", "cascos de seguridad", "botas de trabajo", "uniforme", "tarjeta de identificación", "tijeras de jardín", "guantes de jardinería", "herramientas de jardinería"]

//Declarando enumeracion con mensajes de tipo String, funge como un conjunto de variables
enum PlayerAuthState: String {
    case authenticating = "Logging into Game Center..."
    case unauthenticated = "Please loging into GameCenter to play"
    case authenticated = ""
    
    case error = "There was an error logging into GameCenter"
    case restricted = "You're not allowed to play multiplayer games"
    
}

struct PastGuess: Identifiable{
    let id = UUID()
    var message: String
    var correct: Bool
}

let maxTimeRemaining = 100
