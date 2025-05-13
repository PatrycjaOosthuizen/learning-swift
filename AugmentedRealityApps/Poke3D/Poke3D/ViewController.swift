//
//  ViewController.swift
//  Poke3D
//
//  Created by PatrycjaOosthuizen on 13/05/2025.
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
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration specifically for image tracking
        let configuration = ARImageTrackingConfiguration()
        
        // Attempt to load reference images from the "Pokemon Crads" image group in the asset catalog
        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Pokemon Cards", bundle: Bundle.main) {
            
            // Assign the loaded images to the tracking configuration
            configuration.trackingImages = imageToTrack
            
            // Limit the AR session to track only one image at a time for better performance
            configuration.maximumNumberOfTrackedImages = 1
            
            // Log confirmation that the images were successfully loaded
            print("Images successfully loaded")
            
        }
        

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
    
    // This method is called when ARKit adds a new anchor to the scene.
    // We're customizing how to visualize an ARImageAnchor with a semi-transparent plane.
    func renderer(_ renderer: any SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        // Create a root node that will hold visual content related to the anchor
        let node = SCNNode()
        
        // Check if the anchor is an ARImageAnchor (i.e., an image was recognized)
        if let imageAnchor = anchor as? ARImageAnchor {
            
            // Create a flat plane with the same physical size as the detected image
            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
            
            // Set the plane's appearance to be semi-transparent white
            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
            
            // Create a node for the plane geometry
            let planeNode = SCNNode(geometry: plane)
            
            // Rotate the plane to lie flat over the detected image (from vertical to horizontal)
            planeNode.eulerAngles.x = -.pi / 2
            
            // Attach the plane node to the anchor's main node
            node.addChildNode(planeNode)
        }
        
        // Return the node to be added to the scene
        return node
    }
}
