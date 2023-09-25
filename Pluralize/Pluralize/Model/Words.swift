//
//  Words.swift
//  Pluralize
//
//  Created by Adolpho Francisco Zimmermann Piazza on 24/09/23.
//

import Foundation

struct Words: Identifiable {
    
    let id: UUID = UUID()
    let title: String
    var count: Int = 0
    
}

extension Words {
    
    static let sample: [Words] = [.init(title: "dog".i18n),
                                  .init(title: "person".i18n),
                                  .init(title: "bed".i18n),
                                  .init(title: "car".i18n),
                                  .init(title: "egg".i18n),
                                  .init(title: "trophy".i18n),
                                  .init(title: "ring".i18n),
                                  .init(title: "step".i18n),
                                  .init(title: "hat".i18n),
                                  .init(title: "citizen".i18n)]
    
}
