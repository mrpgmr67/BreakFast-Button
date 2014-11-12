//
//  GameScene.swift
//  BreakFast Button
//
//  Created by Michael Pomatto on 11/1/14.
//  Copyright (c) 2014 Michael Pomatto. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var player:SKSpriteNode = SKSpriteNode()
    var lastYieldTimeInterval:NSTimeInterval = NSTimeInterval()
    var lastUpdateTimeInterval:NSTimeInterval = NSTimeInterval()
    var playScore:Float32 = 0.0
    var playButton = SKSpriteNode(imageNamed: "Button")
    var scoreLabel = SKLabelNode(fontNamed: "Ariel")
    var tauntLabel = SKLabelNode(fontNamed: "Ariel")

    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        //let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        let myLabel = SKLabelNode(fontNamed:"Ariel")
        myLabel.text = "(C)opyright 2014 Michael S. Pomatto";
        myLabel.fontSize = 10;
        //myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));

        self.playButton.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.scoreLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMaxY(self.frame) - 100)
        self.tauntLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMaxY(self.frame) - 200)
        
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:10);
        self.addChild(myLabel)
        self.addChild(self.playButton)
        self.backgroundColor = UIColor (hex: 0x8FAE8F)
        self.addChild(self.scoreLabel)
        self.addChild(self.tauntLabel)
    }
   
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        playScore += 1
        scoreLabel.text = "Score: \(playScore)"
       
        if playScore < 100 {
            tauntLabel.text = "Keep Going!"
        } else if playScore < 200 {
            tauntLabel.fontSize = 30
            tauntLabel.text = "Getting Closer!"
        } else if playScore < 300 {
            tauntLabel.text = "Legendary!"
            tauntLabel.fontSize = 40
        } else {
            tauntLabel.text = "Winner Winner!"
            tauntLabel.fontSize = 60
        }
    }

    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
