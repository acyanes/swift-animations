//
//  RotateView.swift
//  Animations
//
//  Created by aaron yanes on 8/8/24.
//

import SwiftUI

struct RotateView: View {
    @State private var degrees = Double.zero
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(degrees))
            .animation(.linear(duration: 2.5), value: degrees)
            .onTapGesture {
                degrees = (degrees == .zero) ? 360 : .zero
            }
    }
}

#Preview {
    RotateView()
}
