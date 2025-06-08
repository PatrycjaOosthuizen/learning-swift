//
//  ViewController.swift
//  Pokemon_poster
//
//  Created by PatrycjaOosthuizen on 06/06/2025.
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
        
        // Create a session configuration
        
        // This AR session will only recognize flat 2D images, like printed photos or cards.
        let configuration = ARImageTrackingConfiguration()
        
       /*
        - Loads a set of reference images from your asset catalog (.xcassets) in a group called "PokemonImage".
        - These images are the ones ARKit will try to recognize when the camera sees them.
        - Bundle.main refers to the app's main bundle (where your assets are).
        - You must have an AR Resource Group named "PokemonImage" with 1 or more images added and marked for AR tracking.
        */

        if let trackedImages = ARReferenceImage.referenceImages(inGroupNamed: "PokemonImage", bundle: Bundle.main) {
            
            configuration.trackingImages = trackedImages
            
            configuration.maximumNumberOfTrackedImages = 1
            
        // print("Image Loaded")  // testing purpose
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
    
    // This Swift function is part of an ARKit + SceneKit app that overlays a video on top of a recognized image in augmented reality.
    
func renderer(_ renderer: any SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
    
    let node = SCNNode()
    
    if let imageAnchor = anchor as? ARImageAnchor {
        
        let videoNode = SKVideoNode(fileNamed:"Pokemon.mov")
        
        videoNode.play()
        
        let videoScene = SKScene(size: CGSize(width: 1400, height: 1200))
        
        videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
        
        videoNode.yScale = -1.0
        
        videoScene.addChild(videoNode)
        
        
        let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
        
        plane .firstMaterial?.diffuse.contents = videoScene  // UIColor(white: 1:0, alpha: 0.5) - white rectangle that will appear in the location of the tracked image for testing purpose
        
        let planeNode = SCNNode(geometry: plane)
        
        planeNode.eulerAngles.x = -.pi / 2
        
        node.addChildNode(planeNode)
        
    }
    return node
    
        
    }
}
