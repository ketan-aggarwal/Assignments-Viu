//
//  MovieWorker.swift
//  MovieTitles
//
//  Created by Ketan Aggarwal on 08/11/23.
//

import Foundation

class MovieWorker {
    func fetchPopularMovies(completion: @escaping ([String]) -> Void) {
        let apiKey = "e3d053e3f62984a4fa5d23b83eea3ce6"
        let apiUrl = "https://api.themoviedb.org/3/movie/popular"
        
        guard var urlComponents = URLComponents(string: apiUrl) else {
            completion([])
            return
        }
        
        urlComponents.queryItems = [URLQueryItem(name: "api_key", value: apiKey)]
        
        guard let url = urlComponents.url else {
            completion([])
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching data: \(error)")
                completion([])
                return
            }
            
            guard let data = data else {
                print("No data received from the API.")
                completion([])
                return
            }
            
            do {
                let movieResponse = try JSONDecoder().decode(MovieResponse.self, from: data)
                let movieTitles = movieResponse.results.map { $0.title }
                completion(movieTitles)
            } catch {
                print("Error decoding JSON: \(error)")
                completion([])
            }
        }.resume()
    }
}
