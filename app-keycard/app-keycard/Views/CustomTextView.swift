//
//  CustomTextView.swift
//  app-keycard
//
//  Created by Rakesh Khandagale on 1/26/21.
//

import SwiftUI

struct CustomTextView: View {
    
    // MARK:- Properties
    var title: String
    var size: CGFloat
    var fontWeight: Font.Weight
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.system(size: size, weight: fontWeight, design: .default))
            .foregroundColor(textColor)
    }
}
