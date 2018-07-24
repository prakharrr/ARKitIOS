//
//  ViewController.swift
//  CoreML
//
//  Created by Prakhar Rawat on 7/23/18.
//  Copyright © 2018 Prakhar Rawat. All rights reserved.
//

import UIKit
import AVKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //start the cam here
        let captureSession = AVCaptureSession ()
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else{
            return
        }
        
       guard let input = try? AVCaptureDeviceInput(device: captureDevice) else {return}
        
        captureSession.addInput(input)
        
        captureSession.startRunning()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

