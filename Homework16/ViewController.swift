//
//  ViewController.swift
//  Homework16
//
//  Created by mac on 18.11.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ibImageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibImageOutlet.backgroundColor = UIColor.purple
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(rotationGesture(_:)))
        ibImageOutlet.addGestureRecognizer(rotationGesture)
    }
    @objc func rotationGesture(_ sender: UIRotationGestureRecognizer) {
        guard let transformedView = sender.view else { return }
        sender.view?.transform = transformedView.transform.rotated(by: sender.rotation)
        sender.rotation = 0
    }
    
    @IBAction func pinchRecognized(_ sender: UIPinchGestureRecognizer) {
        ibImageOutlet.transform = ibImageOutlet.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
    }
    
    @IBAction func tapRecognized(_ sender: Any) {
        ibImageOutlet.backgroundColor = UIColor.random
    }
    
    @IBAction func panRecognized(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        ibImageOutlet.center = point
    }
    
}


