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
        
        // Set the view's delegate
        sceneView.delegate = self
        
        sceneView.autoenablesDefaultLighting = true
       
        
     
        // Create a new scene
        let diceScene = SCNScene(named: "art.scnassets/diceCollada.scn")!
        
        if let diceNode = diceScene.rootNode.childNode(withName: "Dice", recursively: true) {
            
        diceNode.position = SCNVector3(x: 0, y: 0, z: -0.1)
            
        sceneView.scene.rootNode.addChildNode(diceNode)
            
        }
        


       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
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

}
