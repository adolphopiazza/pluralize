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
                Image.Pluralize.minus
            }
            .buttonStyle(.borderless)
            .disabled(word.count <= 0)
            
            Spacer()
            
            Text("^[\(word.count) \(word.title)](inflect: true)")
            
            Spacer()
            
            Button {
                word.count += 1
            } label: {
                Image.Pluralize.plus
            }
            .buttonStyle(.borderless)
        }
    }
    
}

struct PluralizeListRow_Previews: PreviewProvider {
    
    struct Container: View {
        @State private var word: Words = Words(title: "egg".i18n)
        
        var body: some View {
            NavigationStack {
                List {
                    PluralizeListRow(word: word)
                }
                .navigationTitle("pluralize_list_title".i18n)
            }
            .tint(.orange)
        }
    }
    
    static var previews: some View {
        Container()
            .previewDisplayName("Light Mode")
            .preferredColorScheme(.light)
        
        Container()
            .previewDisplayName("Dark Mode")
            .preferredColorScheme(.dark)
    }
    
}
