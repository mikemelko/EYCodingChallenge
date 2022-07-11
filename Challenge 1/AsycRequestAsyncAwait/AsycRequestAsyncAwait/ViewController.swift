//
//  ViewController.swift
//  AsycRequestAsyncAwait
//
//  Created by Mike Melko on 7/11/22.
//

import UIKit

struct Response:Decodable {
    let ip: String?
}

class ViewController: UIViewController {
    
    private var response: String = ""
    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        [label].forEach {
          $0.text = "Processing...."
          $0.sizeToFit()
          $0.center = self.view.center
          self.view.addSubview($0)
        }
        
        Task.init {
          let ip = await fetchResponse(urlString: "http://ip.jsontest.com/")
            self.response = ip
            
            DispatchQueue.main.async {
                [self.label].forEach {
                    $0.text = self.response
                    $0.sizeToFit()
                    $0.center = self.view.center
                }
            }
        }
    }
    
    private func fetchResponse(urlString: String) async -> String {
        guard let url = URL(string: urlString) else {
            return ""
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(Response.self, from: data)
            self.response = response.ip ?? "No data"
            print("\(String(describing: response.ip))")
            return self.response
        } catch {
            return "An error occurred."
        }
    }
}
