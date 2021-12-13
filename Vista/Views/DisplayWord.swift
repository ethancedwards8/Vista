//
//  Landing.swift
//  Vista
//
//  Created by Ethan Carter Edwards on 12/12/21.
//

import SwiftUI

struct DisplayWord: View {
    
    @State var word: Word
    
    var body: some View {
        HStack {
            Text(word.Word + " (\(word.getShortHand()))" + " - " + word.EnglishDefinition)
            Button(action: {
                word.favorite = !word.favorite // https://stackoverflow.com/questions/29202508/is-there-a-way-to-toggle-a-boolean-variable-in-c lol
            }) {
                Image(systemName: (word.favorite == false ? "star" : "star.fill"))
            }
        }
        .foregroundColor(Color.white)
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(word.getColor())
        .cornerRadius(25)
    }
}

struct DisplayWord_Previews: PreviewProvider {
    static var previews: some View {
        DisplayWord(word: mochila)
    }
}
