//
//  ContentView.swift
//  Vista
//
//  Created by Ethan Carter Edwards on 12/12/21.
//

import SwiftUI

struct Landing: View {

    @State private var allWords: [Word] = []
    @State private var newWord = ""
    private let wordsKey = "wordsKey"

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach (allWords) {
                        word in
                        NavigationLink {
                            WordInfo(word: word)
                        } label: {
                            DisplayWord(word: word)
                        }
                    }
                }
            }
            .navigationBarTitle("Vista")
        }.onAppear(perform: loadWords)
    }

    // just keeping track of these for the time being
    private func loadWords() {
        allWords.append(Word(Word: "Mochila", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.feminine, EnglishDefinition: "Backpack", SpanishDefinition: "Bolsa de lona o de otro material resistente que, provista de correas para ser cargada a la espalda, sirve para llevar provisiones o equipos en excursiones, expediciones, viajes."))
        
        allWords.append(Word(Word: "Manta", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.feminine, EnglishDefinition: "Blanket", SpanishDefinition: "Pieza de lana, algodón u otro material, de forma rectangular, que sirve de abrigo en la cama."))
        
        allWords.append(Word(Word: "Baño", PartOfSpeech: PartOfSpeech.noun, Gender: Gender.masculine, EnglishDefinition: "Bathroom", SpanishDefinition: "Acción y efecto de bañar."))


        allWords.append(Word(Word: "amenazar", PartOfSpeech: PartOfSpeech.verb, Gender: Gender.not_applicable, EnglishDefinition: "To threaten", SpanishDefinition: "Dar a entender con actos o palabras que se quiere hacer algún mal a alguien."))
    }


}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
    }
}
