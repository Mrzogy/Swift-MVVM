//
//  Color.swift
//  SwiftBitCoinMvvm
//
//  Created by 3bood on 14/11/1444 AH.
//

import Foundation
import SwiftUI

extension Color {
   static let theme = ColorTheme()
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secoundryTxt = Color("SecondaryTextColor")
}
