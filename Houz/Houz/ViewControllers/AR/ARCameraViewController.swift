//
//  ARCameraViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/10/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import ARKit

class ARCameraViewController: UIViewController {

    let movingLengthPerLoop: CGFloat = 0.05
    let rotationRadianPerLoop: CGFloat = 0.2
    let animationDurationMoving: TimeInterval = 0.2
    let startingPosition = SCNVector3(0, 0, -1)
    var object = ARObject()
    var threeDimensionalObject = ThreeDimensionalObject()
    
    @IBOutlet var sceneView: ARSCNView!

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        addPinchGestureRecognizer()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupConfiguration()
        loadObject()
    }

    func setupScene() {
        let scene = SCNScene()
        sceneView.backgroundColor = .black
        sceneView.scene = scene
    }

    func setupConfiguration() {
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }

    func addObject(position: matrix_float4x4, sceneView: ARSCNView, node: SCNNode, objectPath: String) {

        node.position = SCNVector3(position[3].x, position[3].y, position[3].z)

        // Create a new scene
        guard let virtualObjectScene = SCNScene(named: objectPath)
            else {
                print("Unable to Generate : " + objectPath)
                return
        }

        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            child.geometry?.firstMaterial?.lightingModel = .physicallyBased
            wrapperNode.addChildNode(child)
        }

        node.addChildNode(wrapperNode)
        sceneView.scene.rootNode.addChildNode(node)
    }

    func loadObject() {
        object.loadModel(location: threeDimensionalObject.location!)
        object.position = startingPosition
        object.rotation = SCNVector4Zero
        sceneView.scene.rootNode.addChildNode(object)
    }

}

// MARK: Actions

extension ARCameraViewController {

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func moveUp(_ sender: UILongPressGestureRecognizer) {
        let action = SCNAction.moveBy(x: 0, y: movingLengthPerLoop, z: 0, duration: animationDurationMoving)
        execute(action: action, sender: sender)
    }

    @IBAction func moveDown(_ sender: UILongPressGestureRecognizer) {
        let action = SCNAction.moveBy(x: 0, y: -movingLengthPerLoop, z: 0, duration: animationDurationMoving)
        execute(action: action, sender: sender)
    }

    @IBAction func moveLeft(_ sender: UILongPressGestureRecognizer) {
        let x = -deltas().cos
        let z = deltas().sin
        moveObject(x: x, z: z, sender: sender)
    }

    @IBAction func moveRight(_ sender: UILongPressGestureRecognizer) {
        let x = deltas().cos
        let z = deltas().sin
        moveObject(x: x, z: z, sender: sender)
    }

    @IBAction func moveForward(_ sender: UILongPressGestureRecognizer) {
        let x = -deltas().sin
        let z = -deltas().cos
        moveObject(x: x, z: z, sender: sender)
    }

    @IBAction func moveBackward(_ sender: UILongPressGestureRecognizer) {
        let x = deltas().sin
        let z = deltas().cos
        moveObject(x: x, z: z, sender: sender)
    }

    @IBAction func rotateLeft(_ sender: UILongPressGestureRecognizer) {
        rotateObject(yRadian: rotationRadianPerLoop, sender: sender)
    }

    @IBAction func rotateRight(_ sender: UILongPressGestureRecognizer) {
        rotateObject(yRadian: -rotationRadianPerLoop, sender: sender)
    }
    
    @IBAction func tapScreen(_ sender: UITapGestureRecognizer) {
        let result = sceneView.hitTest(sender.location(in: sceneView), types: [ARHitTestResult.ResultType.featurePoint])
        
        guard let hitResult = result.last else { return }
        
        let hitTransform = hitResult.worldTransform
        
        addObject(position: hitTransform, sceneView: sceneView, node: object, objectPath: threeDimensionalObject.location!)
        
    }


    @objc func handlePinch(_ pinchRecognizer: UIPinchGestureRecognizer) {
        object.runAction(SCNAction.scale(by: pinchRecognizer.scale, duration: 0.1))
    }

}

// MARK: Private Helper methods

extension ARCameraViewController {

    private func addPinchGestureRecognizer() {
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch))
        sceneView.addGestureRecognizer(pinchGesture)
    }

    private func execute(action: SCNAction, sender: UILongPressGestureRecognizer) {
        let loopAction = SCNAction.repeatForever(action)
        if sender.state == .began {
            object.runAction(loopAction)
        } else if sender.state == .ended {
            object.removeAllActions()
        }
    }

    private func deltas() -> (sin: CGFloat, cos: CGFloat) {
        return (sin: movingLengthPerLoop * CGFloat(sin(object.eulerAngles.y)), cos: movingLengthPerLoop * CGFloat(cos(object.eulerAngles.y)))
    }

    private func moveObject(x: CGFloat, z: CGFloat, sender: UILongPressGestureRecognizer) {
        let action = SCNAction.moveBy(x: x, y: 0, z: z, duration: animationDurationMoving)
        execute(action: action, sender: sender)
    }

    private func rotateObject(yRadian: CGFloat, sender: UILongPressGestureRecognizer) {
        let action = SCNAction.rotateBy(x: 0, y: yRadian, z: 0, duration: animationDurationMoving)
        execute(action: action, sender: sender)
    }

}
