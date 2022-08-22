//
//  ContentView.swift
//  SwiftUI-CAEmitterLayer
//
//  Created by JarvanSun on 2022/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AnimationRepresentable()
            .frame(width: 300, height: 300)
//            .clipped()
            .overlay {
                Rectangle().stroke()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
