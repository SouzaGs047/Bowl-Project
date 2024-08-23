//
//  Item.swift
//  GP4-Challenge-2
//
//  Created by GUSTAVO SOUZA SANTANA on 22/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
    
}
