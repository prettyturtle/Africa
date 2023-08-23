//
//  CenterModifier.swift
//  yc_Africa
//
//  Created by yc on 2023/08/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
