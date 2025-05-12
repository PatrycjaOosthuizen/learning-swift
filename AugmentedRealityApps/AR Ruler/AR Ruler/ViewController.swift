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
    // Currently logs a message to the console for debugging purposes.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touch detected")
    }

}
