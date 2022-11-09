//
//  ViewController.swift
//  iOS_Get_Example
//
//  Created by David Razmadze on 11/9/22.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    getIceCream()
  }

  // MARK: - Helper Functions
  
  private func getIceCream() {
    // Create URL
    let url = URL(string: "http://localhost:8080/api/icecream")
    guard let requestUrl = url else { fatalError() }

    // Create URL Request
    var request = URLRequest(url: requestUrl)

    // Specify HTTP Method to use
    request.httpMethod = "GET"

    // Send HTTP Request
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        // Check if Error took place
        if let error = error {
            print("❌ Error took place \(error)")
            return
        }
        
        // Read HTTP Response Status code
        if let response = response as? HTTPURLResponse {
            print("🔐 Response HTTP Status code: \(response.statusCode)")
        }
        
        // Convert HTTP Response Data to a simple String
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            print("✅ Response data string:\n \(dataString)")
        }
        
    }
    task.resume()
  }
  
}

