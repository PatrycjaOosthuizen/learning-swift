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
    
    // Array to keep track of all dot nodes added to the scene.
    // Useful for managing, updating, or removing them later.
    var dotNodes = [SCNNode]()
    
    // Declare a reusable node to display 3D text in the AR scene.
    // This allows updating or removing the text later without creating multiple nodes.
    var textNode = SCNNode()
    
    
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
        
        // If two or more dots are already placed, remove them from the scene
        if dotNodes.count >= 2 {
            for dot in dotNodes {
                dot.removeFromParentNode() // Remove each dot node from the scene
            }
            
            dotNodes  = [SCNNode]() // Reset the dotNodes array for new measurements
        }
       
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
        
        dotNodes.append(dotNode)
        
        if dotNodes.count >= 2 {
            calculete()
        }
    }
    // Calculates the distance between the first two placed dot nodes in 3D space.
    // This can be used, for example, to measure real-world distances in AR.
    func calculete() {
        
        // Get the first and second dot nodes
        let start = dotNodes[0]
        let end = dotNodes[1]
        
        // Compute the differences in x, y, and z coordinates
        let a = end.position.x - start.position.x
        let b = end.position.y - start.position.y
        let c = end.position.z - start.position.z
        
        // Use the 3D distance formula to calculate the distance between the two points
        let distance = sqrt(pow(a, 2) + pow(b, 2) + pow(c, 2))
        
        
        // Call this function to display the calculated distance as 3D text at the second dot's position
        updateText(text: "\(abs(distance))", atPosition: end.position)
        
    }
  
    // Adds a 3D text label to the AR scene at the specified position
    func updateText(text: String, atPosition position: SCNVector3) {
        
        // Remove the text node from its parent to clear it from the AR scene
        textNode.removeFromParentNode()
        
        let textGeometry = SCNText(string: text, extrusionDepth: 1.0)
        
        textGeometry.firstMaterial?.diffuse.contents = UIColor.red
        
        // Create a node with the text geometry
        textNode = SCNNode(geometry: textGeometry)
        
        // Position the text slightly above the given position to avoid overlapping with the dot
        textNode.position = SCNVector3(position.x, position.y + 0.01, position.z)
        
        // Scale down the text so it fits nicely in the AR scene
        textNode.scale = SCNVector3(0.003, 0.003, 0.003)
        
        sceneView.scene.rootNode.addChildNode(textNode)
    }
}
