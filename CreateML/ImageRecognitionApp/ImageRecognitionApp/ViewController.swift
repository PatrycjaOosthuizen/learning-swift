//
//  ViewController.swift
//  ImageRecognitionApp
//
//  Created by PatrycjaOosthuizen on 08/05/2025.
//

import UIKit
import CoreML
import Vision
import PhotosUI


class ViewController: UIViewController, UINavigationControllerDelegate, PHPickerViewControllerDelegate {

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Choose an Image"
    
    }


    @IBAction func cameraButtonTapped(_ sender: UIBarButtonItem) {
        var configuration = PHPickerConfiguration()
                configuration.filter = .images
                configuration.selectionLimit = 1

                let picker = PHPickerViewController(configuration: configuration)
                picker.delegate = self
                present(picker, animated: true)
    }


    // MARK: - Image Classification
        func classify(image: UIImage) {
            // Load the Core ML model
            guard let model = try? VNCoreMLModel(for: ImageRecognitionMLModel1().model) else {
                print("Failed to load model")
                return
            }

            // Convert the UIImage to CIImage
            guard let ciImage = CIImage(image: image) else {
                print("Unable to convert UIImage to CIImage")
                return
            }

            // Create the request for Core ML classification
            let request = VNCoreMLRequest(model: model) { [weak self] request, error in
                guard let results = request.results as? [VNClassificationObservation] else {
                    print("No results")
                    return
                }

                // Debugging: Print all class labels and their probabilities
                for result in results {
                    print("\(result.identifier): \(result.confidence * 100)%")
                }

                // Get the top result (highest confidence)
                guard let topResult = results.first else {
                    print("No top result")
                    return
                }

                // Update the UI with the top result
                DispatchQueue.main.async {
                    self?.navigationItem.title = "Prediction: \(topResult.identifier) (\(Int(topResult.confidence * 100))%)"
                }
            }

            // Perform the image classification request
            let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
            try? handler.perform([request])
        }
    }

// MARK: - PHPicker Delegate
extension ViewController {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)

        guard let provider = results.first?.itemProvider,
              provider.canLoadObject(ofClass: UIImage.self) else { return }

        provider.loadObject(ofClass: UIImage.self) { [weak self] image, error in
            guard let uiImage = image as? UIImage else { return }

            DispatchQueue.main.async {
                self?.ImageView.image = uiImage
                self?.classify(image: uiImage)
            }
        }
    }
}
