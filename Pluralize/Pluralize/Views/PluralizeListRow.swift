//
//  PluralizeListRow.swift
//  Pluralize
//
//  Created by Adolpho Francisco Zimmermann Piazza on 24/09/23.
//

import SwiftUI

struct PluralizeListRow: View {
    
    @State var word: Words
    
    var body: some View {
        HStack {
            Button {
                word.count -= 1
            } label: {
                Image(systemName: "minus")
            }
            .buttonStyle(.borderless)
            .disabled(word.count <= 0)
            
            Spacer()
            
            Text("^[\(word.count) \(word.title)](inflect: true)")
            
            Spacer()
            
            Button {
                word.count += 1
            } label: {
                Image(systemName: "plus")
            }
            .buttonStyle(.borderless)
        }
    }
    
}

struct PluralizeListRow_Previews: PreviewProvider {
    
    struct Container: View {
        @State private var word: Words = Words(title: "egg")
        
        var body: some View {
            PluralizeListRow(word: word)
        }
    }
    
    static var previews: some View {
        Container()
    }
    
}
