//
//  ViewController.swift
//  AsyncRequestClosureCallback
//
//  Created by Mike Melko on 7/11/22.
//

//  Note: In order to retrieve data from an unsecured website, it is necessary
//  to add an ATS security exception to infor.plist.

import UIKit

struct Response: Decodable {
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
      
        getData(from: "http://ip.jsontest.com/")
    }
    
    func getData(from url: String) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!) {
            data, response, error in
            
            guard let data = data, error == nil else {
                print("No data")
                return
            }
            
            var result: Response?
            
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            } catch {
              print("Error: \(error.localizedDescription)")
            }
            
            guard let result = result else {
                return
            }

            DispatchQueue.main.async {
                [self.label].forEach {
                    $0.text = result.ip
                    $0.sizeToFit()
                    $0.center = self.view.center
                }
                print(result.ip ?? "Result not found.")
            }
        }
            task.resume()
    }
}
