//
//  AnimationView.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 22/11/22.
//

import SwiftUI
import SpriteKit

struct AnimationView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize (width: 216, height: 216)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
        SpriteView(scene: self.scene)
            .frame(width: 1000, height: 900)
            .ignoresSafeArea()
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
