//
//  GameScene.swift
//  AppNC1!
//
//  Created by Dolores Pastore on 22/11/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var player: SKSpriteNode!
    
    private var playerAtlas: SKTextureAtlas {
        return SKTextureAtlas(named: "Player")
    }
    
    private var playerTexture: SKTexture {
        return playerAtlas.textureNamed("Player")
    }
    
    private var playerIdleTextures: [SKTexture] {
           return [
               playerAtlas.textureNamed("idle_1"),
               playerAtlas.textureNamed("idle_2"),
               playerAtlas.textureNamed("idle_3"),
               playerAtlas.textureNamed("idle_4"),
               playerAtlas.textureNamed("idle_5"),
               playerAtlas.textureNamed("idle_6"),
               playerAtlas.textureNamed("idle_7")
           ]
       }
       
       private func setupPlayer() {
           player = SKSpriteNode(texture: playerTexture, size: CGSize(width: 80, height: 50))
           player.position = CGPoint(x: frame.width/2, y: frame.height/2)
           
           addChild(player)
       }
       
       override func didMove(to view: SKView) {
           backgroundColor = SKColor.white
           self.setupPlayer()
           self.startIdleAnimation()
       }
       
       func startIdleAnimation() {
           let IdleAnimation = SKAction.animate(with: playerIdleTextures, timePerFrame: 0.09)
           
           player.run(SKAction.repeat(IdleAnimation, count: 1), withKey: "playerIdleAnimation")
       }
   }
