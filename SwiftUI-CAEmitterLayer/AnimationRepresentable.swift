//
//  File.swift
//  SwiftUI-CAEmitterLayer
//
//  Created by JarvanSun on 2022/8/22.
//

import SwiftUI

struct AnimationRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        AnimationView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
