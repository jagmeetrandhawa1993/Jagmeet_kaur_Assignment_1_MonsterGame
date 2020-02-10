//
//  GameOverScene.swift
//  Jagmeet_kaur_Assignment_1
//
//  Created by Jagmeet Kaur on 2020-02-06.
//  Copyright © 2020 Jagmeet Kaur. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
  init(size: CGSize, won:Bool) {
    super.init(size: size)

    backgroundColor = SKColor.white
    
    // 2
    let message = won ? "You Won!" : "You Lose :["
    
    // 3
    let label = SKLabelNode(fontNamed: "Chalkduster")
    label.text = message
    label.fontSize = 40
    label.fontColor = SKColor.black
    label.position = CGPoint(x: size.width/2, y: size.height/2)
    addChild(label)
    
    // 4
    run(SKAction.sequence([
      SKAction.wait(forDuration: 3.0),
      SKAction.run() { [weak self] in
        // 5
        guard let `self` = self else { return }
        //let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        //let scene = GameScene(size: size)
     //   self.view?.presentScene(scene, transition:reveal)
        }
      ]))

   }
  
  // 6
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
    
/*    func changeScene(){
        let secondScene = GameScene(size: self.size)
        secondScene.scaleMode = scaleMode

        secondScene.object = somethingInFirstSceneThatNeedToBePassed //here we do the passing

        let transition = SKTransition.fadeWithDuration(0.5)
        self.view?.presentScene(secondScene, transition: transition)
    }
 */
}
