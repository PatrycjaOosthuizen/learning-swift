//
//  ViewController.swift
//  ARDicee
//
//  Created by PatrycjaOosthuizen on 09/05/2025.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    var diceArray = [SCNNode]()

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Enable visualization of feature points (small yellow dots) that ARKit detects in the real world.
        // These points help ARKit understand surface geometry for plane detection and tracking.
        // -> self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        
        // Set the view's delegate
        sceneView.delegate = self
        
        sceneView.autoenablesDefaultLighting = true
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
        configuration.planeDetection = .horizontal // .vertical
        
        // Print whether ARKit is supported on the current device at all.
        // This checks general AR capabilities (usually true for devices with A9 chip or later).
        print("Session is supported:\(ARConfiguration.isSupported)")
        
        // Print whether world tracking is supported.
        // This is more specific — world tracking allows tracking position and orientation in real-world space.
        print("World tracking is supported: \(ARWorldTrackingConfiguration.isSupported)")

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    //MARK: - Dice Rendering Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       if let touch = touches.first {
           let touchLocation = touch.location(in: sceneView)
           
           let results = sceneView.hitTest(touchLocation, types: .existingPlaneUsingExtent)
           
           if let hitTestResult = results.first {
               // print ("hit test result: \(hitTestResult)")
               
               addDice(atLocation: hitTestResult)
           }
        }
    }
    
    func addDice(atLocation location: ARHitTestResult){
        // Create a new scene
        let diceScene = SCNScene(named: "art.scnassets/diceCollada.scn")!

        if let diceNode = diceScene.rootNode.childNode(withName: "Dice", recursively: true) {

        diceNode.position = SCNVector3(
         x: location.worldTransform.columns.3.x,
         y: location.worldTransform.columns.3.y + diceNode.boundingSphere.radius,
         z: location.worldTransform.columns.3.z
        )
            
        diceArray.append(diceNode)

        sceneView.scene.rootNode.addChildNode(diceNode)
            
            rollDice(dice: diceNode)

        }
    }
    
    func rollDice(dice: SCNNode){
        let randomX = Float(arc4random_uniform(4) + 1) * (Float.pi/2)
        
        let randomZ = Float(arc4random_uniform(4) + 1) * (Float.pi/2)
        
        dice.runAction(
         SCNAction.rotateBy(
            x: CGFloat(randomX * 5),
            y: 0,
            z: CGFloat(randomZ * 5),
            duration: 0.5)
        )
    }
    
    func rollAllDice() {
          if !diceArray.isEmpty {
              for dice in diceArray {
                  rollDice(dice: dice)
              }
        }
    }
    
    
    @IBAction func rollAgain(_ sender: UIBarButtonItem) {
        rollAllDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollAllDice()
        }
    }
    
    
    @IBAction func removeAllDice(_ sender: UIBarButtonItem) {
        
        if !diceArray.isEmpty {
            for dice in diceArray {
                dice.removeFromParentNode()
            }
             diceArray.removeAll()
        }
    }
    
    //MARK: - ARSCNViewDelegateMethods
    
    func renderer(_ renderer: any SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        if anchor is ARPlaneAnchor {
            // print("plane detected")
            let planeAnchor = anchor as! ARPlaneAnchor
            
            let planeNode = createPlane(withPlaneAnchor: planeAnchor)
            
            node.addChildNode(planeNode)
            
        } else {
            return
        }

    }
    
    //MARK: - Plane Rendering Mehods
    
    func createPlane(withPlaneAnchor planeAnchor: ARPlaneAnchor) -> SCNNode {
        let plane = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))
        
        let planeNode = SCNNode()
        
        planeNode.position = SCNVector3(x: planeAnchor.center.x, y: 0, z: planeAnchor.center.z)
        
        planeNode.transform = SCNMatrix4MakeRotation(-Float.pi/2, 1, 0, 0)
        
         let gridMaterial = SCNMaterial()
        
         gridMaterial.diffuse.contents = UIImage(named: "art.scnassets/grid.png")
        
         plane.materials = [gridMaterial]
        
        planeNode.geometry = plane
        
        return planeNode
    }

}
