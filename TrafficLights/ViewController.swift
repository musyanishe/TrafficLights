//
//  ViewController.swift
//  TrafficLights
//
//  Created by Евгения Шевцова on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var activeColor = trafficLights.red
    
    enum trafficLights {
        case red, yellow, green
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - interface of redView
        redView.backgroundColor = .red
        redView.layer.cornerRadius = redView.frame.width/2
        redView.alpha = 0.3
        
        //MARK: - interface of yellowView
        yellowView.backgroundColor = .yellow
        yellowView.layer.cornerRadius = yellowView.frame.width/2
        yellowView.alpha = 0.3
        
        //MARK: - interface of greenView
        greenView.backgroundColor = .green
        greenView.layer.cornerRadius = greenView.frame.width/2
        greenView.alpha = 0.3
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        switch activeColor {
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            activeColor = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            activeColor = .green
        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            activeColor = .red
        }
    }
    
}

