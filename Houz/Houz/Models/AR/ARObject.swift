//
//  ARObject.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/11/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import SceneKit

class ARObject: SCNNode {

    func loadModel(location: String) {
        guard let virtualObjectScene = SCNScene(named: location) else {
            print("failed to load")
            return
        }
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        addChildNode(wrapperNode)
    }

}
