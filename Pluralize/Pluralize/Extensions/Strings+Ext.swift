//
//  Strings+Ext.swift
//  Pluralize
//
//  Created by Adolpho Francisco Zimmermann Piazza on 24/09/23.
//

import Foundation

extension String {
    
    var i18n: String {
        return NSLocalizedString(self, comment: "")
    }
    
}
