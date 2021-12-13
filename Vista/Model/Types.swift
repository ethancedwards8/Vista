//
//  Types.swift
//  Vista
//
//  Created by Ethan Carter Edwards on 12/12/21.
//

import Foundation
import SwiftUI

var mochila: Word = Word(Word: "Mochila", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.feminine, EnglishDefinition: "backpack", SpanishDefinition: "Bolsa de lona o de otro material resistente que, provista de correas para ser cargada a la espalda, sirve para llevar provisiones o equipos en excursiones, expediciones, viajes")

public struct Word: Codable, Identifiable {
    public let Word: String
    public let PartOfSpeech: PartOfSpeech
    public let Gender: Gender
    public let EnglishDefinition: String
    public let SpanishDefinition: String
    public var favorite: Bool = false
    public var hidden: Bool = false
    public var id = UUID()
    
    init(Word: String, PartOfSpeech: PartOfSpeech, Gender: Gender, EnglishDefinition: String, SpanishDefinition: String) {
        self.Word = Word
        self.PartOfSpeech = PartOfSpeech
        self.Gender = Gender
        self.EnglishDefinition = EnglishDefinition
        self.SpanishDefinition = SpanishDefinition
    }
    
    func getColor() -> Color {
        if (getShortHand() == "nf") {
            return Color.pink
        } else if (getShortHand() == "nm") {
            return Color.blue
        } else if (getShortHand() == "v") {
            return Color.yellow
        } else if (getShortHand() == "adj") {
            return Color.green
        } else if (getShortHand() == "adv") {
            return Color.orange
        } else {
            return Color.purple // should never happen, if it does, there is an issue heh
        }
    }
    
    func getShortHand() -> String {
        
        switch (self.PartOfSpeech) {
            
        case .verb:
            return "v"
            
        case .noun:
            return "n" + getGenderShortHand()
            
        case .adverb:
            return "adv"
            
        case .adjective:
            return "adj"
                    
        }
    }
    
    func getGenderShortHand() -> String {
        switch (self.Gender) {
        case .feminine:
            return "f"
            
        case .masculine:
            return "m"
            
        case .not_applicable: // never will be used, but Swift is picky :\. Probably just needs to be refactored, I guess this is Swift's way of telling me this is a poor design deciiosn. TODO: Perhaps I make a "noun" struct that handles it, maybe. 
            return "n/a"
        }
        
        
    }
}

public enum PartOfSpeech: Codable {
    case verb
    case noun
    case adjective
    case adverb
}

public enum Gender: Codable {
    case masculine
    case feminine
    case not_applicable // useful for things like verbs, adverbs, etc. 
}


//allWords.append(Word(Word: "Mochila", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.feminine, EnglishDefinition: "backpack", SpanishDefinition: "Bolsa de lona o de otro material resistente que, provista de correas para ser cargada a la espalda, sirve para llevar provisiones o equipos en excursiones, expediciones, viajes"))
//allWords.append(Word(Word: "Manta", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.feminine, EnglishDefinition: "blanket", SpanishDefinition: " Pieza de lana, algodón u otro material, de forma rectangular, que sirve de abrigo en la cama."))
//
//allWords.append(Word(Word: "amenazar", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.not_applicable, EnglishDefinition: "to threaten", SpanishDefinition: "Dar a entender con actos o palabras que se quiere hacer algún mal a alguien"))
//
