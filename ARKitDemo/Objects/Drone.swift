//
//  Drone.swift
//  ARKitDemo
//
//  Created by MAC0008 on 11/02/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import ARKit

class Drone: SCNNode {
    func loadModel(){
        guard let virtualObjectScene = SCNScene(named: "Drone.scn") else { return }
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        
        addChildNode(wrapperNode)
    }
}
