

//Author’s name(Nisha Tandel)
//Student Number(301094688)
//Test Date: 19 February 2020

import UIKit
import AVFoundation
import SpriteKit
import GameplayKit


class StartScene: SKScene {
    
    //var sceneState: SceneState?
    
    var oceanSprite1: Ocean?
    var oceanSprite2: Ocean?
    //var config: Config?
    

    
    
    override func didMove(to view: SKView)
    {
        screenWidth = frame.width
        screenHeight = frame.height
        
        //self.sceneState = .START
        //self.config?.sceneState = .START
        self.name = "START"
        
        // add ocean
        self.oceanSprite1 = Ocean()
        self.oceanSprite1?.position = CGPoint(x: 0, y: 0)
        self.addChild(oceanSprite1!)
        
        self.oceanSprite2 = Ocean()
        self.oceanSprite2?.position = CGPoint(x: 896, y: 0)
        self.addChild(oceanSprite2!)
        
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
        
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self))}
        
        /*
        if let view = self.view
        {
            if let scene = SKScene(fileNamed: "GameScene")
            {
                scene.scaleMode = .aspectFill
                view.presentScene(scene)
            }
        }
         */
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self))}
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self))}
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self))}
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        self.oceanSprite1?.Update()
        self.oceanSprite2?.Update()
    
    }
}

