//
//  ViewController.swift
//  AR Ruler
//
//  Created by PatrycjaOosthuizen on 12/05/2025.
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
        
        // Enable debugging visuals to show ARKit's detected feature points in the scene.
        // This helps visualize the points in the real world that ARKit is using to track surfaces and motion.
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    // Override the method to detect when a touch begins on the screen.
    // If a touch is detected, perform a hit test at the touch location to find a feature point in the real world.
    // If a feature point is found, place a small red dot at that location in the AR scene.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        if let touchLocation = touches.first?.location(in: sceneView) {
            // Perform a hit test to find real-world feature points at the touched location
            let hitTestResults = sceneView.hitTest(touchLocation, types: .featurePoint)
            
            // If a feature point was found, add a red dot at its position
            if let hitResult = hitTestResults.first {
                addDot(at: hitResult)
            }
        }
    }
    // Adds a small red dot (3D sphere) to the AR scene at the specified hit test result location
    func addDot(at hitResult : ARHitTestResult) {
        let dotGeometry = SCNSphere(radius: 0.005) // Create a small sphere geometry
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.red  // Set the color of the sphere
        dotGeometry.materials = [material]
        
        let dotNode = SCNNode(geometry: dotGeometry)
        
        // Set the dot's position using the world transform of the hit result
        dotNode.position = SCNVector3(
            x: hitResult.worldTransform.columns.3.x,
            y: hitResult.worldTransform.columns.3.y,
            z: hitResult.worldTransform.columns.3.z)
        
        // Add the dot node to the root of the scene graph
        sceneView.scene.rootNode.addChildNode(dotNode)
    }
  

}
