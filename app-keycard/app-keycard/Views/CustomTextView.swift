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
    var fontType: Font
    var fontWeight: Font.Weight
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(fontType)
            .fontWeight(fontWeight)
            .foregroundColor(textColor)
    }
}
