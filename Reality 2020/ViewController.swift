//
//  ViewController.swift
//  Reality 2020
//
//  Created by Denis Bystruev on 08.09.2020.
//  Copyright © 2020 Denis Bystruev. All rights reserved.
//

import ARKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = ARFaceTrackingConfiguration()
        arView.session.run(configuration)
        
        // Load the "Box" scene from the "Experience" Reality File
        let faceAnchor = try! Webinar.loadScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(faceAnchor)
    }
}
