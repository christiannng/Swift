//
//  ViewController.swift
//  SeeFood
//
//  Created by Christian Nguyen on 2020-01-12.
//  Copyright © 2020 Christian McAwesome. All rights reserved.
//

import UIKit
import CoreML
import Vision //Process image more quickly

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
        imagePicker.sourceType = .camera//.photoLibrary //Fast way to use camera functonality
        imagePicker.allowsEditing = false
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            imageView.image = userPickedImage
            
            guard let ciimage = CIImage(image: userPickedImage) else {
                fatalError("Could not convert UIImage to CIImage")
            }
            
            detect(image: ciimage)
            
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
        
        
    }
    
    func detect(image: CIImage) {
        
        //Funny that VNCoreMLModel come from Vision but not CoreML
        guard let model = try? VNCoreMLModel(for: Inceptionv3().model) else {
            fatalError("Loading CoreML model failed.")
        }
        
        let request = VNCoreMLRequest(model: model) { (request, error) in
            guard let results = request.results as? [VNClassificationObservation] else {
                fatalError("Model failed to process image.")
            }
            
            if let firstResult = results.first {
                
                self.navigationItem.title = firstResult.identifier
                
                
//                if firstResult.identifier.contains("hotdog") {
//                    self.navigationItem.title = "Hotdog!"
//                } else {
//                    self.navigationItem.title = "Not Hotdog!"
//                }
            }
            
        }
        
        let handler = VNImageRequestHandler(ciImage: image)
        
        do {
            try handler.perform([request])
        } catch {
            print(error)
        }
        
        
    }
    

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        //Camera appears when camera button is tapped
        present(imagePicker, animated: true, completion: nil)
        
    }
    
}

