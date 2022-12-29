//
//  Color+Utils.swift
//  Slider
//
//  Created by Raphael Oliveira Chagas on 28/12/22.
//

import SwiftUI

extension Color {
    init(red: CGFloat, green: CGFloat) {
        self.init(red: red / 255, green: green / 255, blue: 0)
    }
}
