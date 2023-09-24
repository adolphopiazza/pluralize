//
//  PluralizeList.swift
//  Pluralize
//
//  Created by Adolpho Francisco Zimmermann Piazza on 23/09/23.
//

import SwiftUI

struct Examples: Identifiable {
    let id: UUID = UUID()
    let title: String
    var count: Int = 0
}

struct PluralizeList: View {
    
    @State private var count: Int = 0
    @State private var examples: [Examples] = [.init(title: "dog"),
                                               .init(title: "person"),
                                               .init(title: "bed"),
                                               .init(title: "car"),
                                               .init(title: "egg")]
    
    var body: some View {
        NavigationStack {
            List($examples) { $example in
                HStack {
                    Button {
                        example.count -= 1
                    } label: {
                        Image(systemName: "minus")
                    }
                    .buttonStyle(.borderless)
                    .disabled(example.count <= 0)
                    
                    Spacer()
                    
                    Text("^[\(example.count) \(example.title)](inflect: true)")
                    
                    Spacer()
                    
                    Button {
                        example.count += 1
                    } label: {
                        Image(systemName: "plus")
                    }
                    .buttonStyle(.borderless)
                }
                .navigationTitle("Pluralize")
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 20) {
                        Text("Check out \"Unlock the power of grammatical agreement\"")
                        
                        Image(systemName: "arrow.up.right.circle")
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: "https://developer.apple.com/videos/play/wwdc2023/10153")!)
                    }
                }
            }
        }
        .tint(.orange)
    }
    
}

struct PluralizeList_Previews: PreviewProvider {
    
    static var previews: some View {
        PluralizeList()
            .previewDisplayName("Light Mode")
            .preferredColorScheme(.light)
        
        PluralizeList()
            .previewDisplayName("Dark Mode")
            .preferredColorScheme(.dark)
    }
    
}
