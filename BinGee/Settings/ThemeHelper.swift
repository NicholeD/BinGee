//
//  ThemeHelper.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/4/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation

struct ThemeHelper {

let themePreferenceKey: String

func setThemePreferenceToDark() {
    UserDefaults.standard.set("Dark", forKey: themePreferenceKey)
}

func setThemePreferenceToLight() {
    UserDefaults.standard.set("Light", forKey: themePreferenceKey)
}

var themePreference: String? {
    UserDefaults.standard.string(forKey: themePreferenceKey)
    return themePreferenceKey
}

//    init?() {
//        if themePreference == nil {
//            setThemePreferenceToLight()
//       } else {
//            setThemePreferenceToDark()
//       }
//    return nil
//   }
}
    
