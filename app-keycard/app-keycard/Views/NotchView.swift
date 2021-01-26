//
//  NotchView.swift
//  app-keycard
//
//  Created by Rakesh Khandagale on 1/26/21.
//

import SwiftUI

struct NotchView: View {
    var body: some View {
        Rectangle()
            .fill(Color(red: 52.0/255.0, green: 52.0/255.0, blue: 52.0/255.0))
            .frame(width: 100, height: 15, alignment: .center)
            .cornerRadius(10.0)
    }
}
