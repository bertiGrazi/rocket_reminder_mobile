//
//  String+Ext.swift
//  Reminder
//
//  Created by Grazi  Berti on 19/02/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
