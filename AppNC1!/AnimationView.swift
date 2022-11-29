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
        ZStack {
            SpriteView(scene: self.scene)
                .padding(.bottom, 100.0)
                .frame(width: 700, height: 900)
                .ignoresSafeArea()
            Text ("Well done! \nYou've completed all today's tasks. \nIt's time to start a new day!")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("AccentColor"))
                .padding(.top, 300.0)
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
