//
//  PluralizeListViewModel.swift
//  Pluralize
//
//  Created by Adolpho Francisco Zimmermann Piazza on 24/09/23.
//

import SwiftUI

final class PluralizeListViewModel: ObservableObject {
    
    @Published var words: [Words] = Words.sample
    
    let navigationTitle: String = "pluralize_list_title".i18n
    let checkDeveloperURL: String = "check_developer_url".i18n
    
}
