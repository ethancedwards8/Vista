//
//  WordInfo.swift
//  Vista
//
//  Created by Ethan Carter Edwards on 12/12/21.
//

import SwiftUI

struct WordInfo: View {
    var word: Word
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Word: " + word.Word + " (\(word.getShortHand()))")
                Text("Part of Speech: " + word.getShortHand())
                Text("Spanish Definition: " + word.SpanishDefinition)
                Text("English Definition: " + word.EnglishDefinition)
            }
        }
    }
}

struct WordInfo_Previews: PreviewProvider {
    static var previews: some View {
        WordInfo(word: mochila)
    }
}
