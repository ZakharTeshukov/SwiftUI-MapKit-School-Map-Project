//
//  Item.swift
//  SwiftUI Knowledge Wiki 2.0
//
//  Created by Zakhar Teshukov on 4/27/24.
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
