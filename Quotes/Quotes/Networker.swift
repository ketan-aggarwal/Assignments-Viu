//
//  Networker.swift
//  Quotes
//
//  Created by Ketan Aggarwal on 26/10/23.
//

//
//  Networker.swift
//  Quotes
//
//  Created by Sam Meech-Ward on 2020-05-23.
//  Copyright © 2020 meech-ward. All rights reserved.
//

import Foundation

enum NetworkerError: Error {
  case badResponse
  case badStatusCode(Int)
  case badData
}

class Networker {
    
    static let shared = Networker()
    
    private let session: URLSession
    
    init() {
        let config = URLSessionConfiguration.default
        session = URLSession(configuration: config)
    }
    
    func getQuote(completion: @escaping (Kanye?, Error?) -> (Void)) {
        let url = URL(string: "https://api.kanye.rest/")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if let error = error {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                DispatchQueue.main.async {
                    completion(nil, NetworkerError.badResponse)
                }
                return
            }
            
            guard (200...299).contains(httpResponse.statusCode) else {
                DispatchQueue.main.async {
                    completion(nil, NetworkerError.badStatusCode(httpResponse.statusCode))
                }
                return
            }
            
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil, NetworkerError.badData)
                }
                return
            }
            
            do {
                let kanye = try JSONDecoder().decode(Kanye.self, from: data)
                DispatchQueue.main.async {
                    completion(kanye, nil)
                }
            } catch let error {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
            }
        }
        task.resume()
    }
}
  
