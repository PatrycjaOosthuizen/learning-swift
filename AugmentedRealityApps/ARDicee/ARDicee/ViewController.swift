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

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Enable visualization of feature points (small yellow dots) that ARKit detects in the real world.
        // These points help ARKit understand surface geometry for plane detection and tracking.
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        
        // Set the view's delegate
        sceneView.delegate = self
        
        sceneView.autoenablesDefaultLighting = true
       
        
     
//        // Create a new scene
//        let diceScene = SCNScene(named: "art.scnassets/diceCollada.scn")!
//        
//        if let diceNode = diceScene.rootNode.childNode(withName: "Dice", recursively: true) {
//            
//        diceNode.position = SCNVector3(x: 0, y: 0, z: -0.1)
//            
//        sceneView.scene.rootNode.addChildNode(diceNode)
//            
//        }
        


       
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
    
    func renderer(_ renderer: any SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        if anchor is ARPlaneAnchor {
            // print("plane detected")
            let planeAnchor = anchor as! ARPlaneAnchor
            
            let plane = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))
            
            let planeNode = SCNNode()
            
            planeNode.position = SCNVector3(x: planeAnchor.center.x, y: 0, z: planeAnchor.center.z)
            
            planeNode.transform = SCNMatrix4MakeRotation(-Float.pi/2, 1, 0, 0)
            
            let gridMaterial = SCNMaterial()
            
            gridMaterial.diffuse.contents = UIImage(named: "art.scnassets/grid.png")
            
            plane.materials = [gridMaterial]
            
            planeNode.geometry = plane
            
            node.addChildNode(planeNode)
            
        } else {
            return
        }

    }

}
