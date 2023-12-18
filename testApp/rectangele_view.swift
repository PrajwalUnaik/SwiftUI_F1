//
//  rectangele_view.swift
//  testApp
//
//  Created by Prajwal U on 18/12/23.
//

import SwiftUI

struct rectangele_view: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color(#colorLiteral))
            .frame(width: 300, height: 200)
    }
}

#Preview {
    rectangele_view()
}
