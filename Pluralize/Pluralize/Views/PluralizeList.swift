//
//  PluralizeList.swift
//  Pluralize
//
//  Created by Adolpho Francisco Zimmermann Piazza on 23/09/23.
//

import SwiftUI

struct PluralizeList: View {
    
    @ObservedObject private var viewModel: PluralizeListViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List(viewModel.words) { word in
                PluralizeListRow(word: word)
                    .alignmentGuide(.listRowSeparatorLeading, computeValue: {_ in return 0})
            }
            .navigationTitle(viewModel.navigationTitle)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 20) {
                        Text(viewModel.checkDeveloperURL)
                        
                        Image.Pluralize.arrowUpRightCircle
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .onTapGesture {
                        openURL()
                    }
                }
            }
        }
        .tint(.orange)
    }
    
}

// MARK: - Private functions
extension PluralizeList {
    
    private func openURL() {
        guard let url = URL(string: "https://developer.apple.com/videos/play/wwdc2023/10153") else { return }
        UIApplication.shared.open(url)
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
