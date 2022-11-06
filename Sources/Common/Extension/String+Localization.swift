//
//  File.swift
//  
//
//  Created by Maitri Vira on 06/11/22.
//

import Foundation

extension String {
  func localized(forLanguage language: String = Locale.preferredLanguages.first!.components(separatedBy: "-").first!) -> String {
    guard let path = Bundle.module.path(forResource: language == "en" ? "Base" : language, ofType: "lproj") else {
      let basePath = Bundle.module.path(forResource: "en", ofType: "lproj")!
      return Bundle(path: basePath)!.localizedString(forKey: self, value: "", table: nil)
    }
    return Bundle(path: path)!.localizedString(forKey: self, value: nil, table: nil)
  }
}
