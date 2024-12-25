//
//  ContentView.swift
//  SwiftUITextAnimationDemo
//
//  Created by Angelos Staboulis on 25/12/24.
//

import SwiftUI
struct ContentView: View {

    var body: some View {
        VStack(spacing: 0) {
            Color.black.overlay {
                Image(.ww)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .phaseAnimator([false, true]) { ww, chromaRotate in
                        ww
                            .scaleEffect(1, anchor: chromaRotate ? .center : .center)
                            .hueRotation(.degrees(chromaRotate ? 300 : 0))
                        
                    } animation: { chromaRotate in
                            .easeInOut(duration: 3)
                    }
            }

        }
    }
}
