//
//  MovieModels.swift
//  MovieTitles
//
//  Created by Ketan Aggarwal on 08/11/23.
//

import Foundation


struct MovieResponse: Codable {
    let results : [Movie]
}

struct Movie: Codable{
    let title: String
}
