//
//  MovieInteractor.swift
//  MovieTitles
//
//  Created by Ketan Aggarwal on 08/11/23.
//

import Foundation


protocol MovieBusinessLogic{
    func fetchPopularMovies()
}

class MovieInteractor: MovieBusinessLogic{
    var worker: MovieWorker?
    var presenter: MoviePresentationLogic?
    
    func fetchPopularMovies() {
        worker?.fetchPopularMovies{ movieTitles in
            let viewModel = MovieViewModel(movieTitles: movieTitles)
            self.presenter?.presentPopularMovies(viewModel : viewModel)
        }
    }
}
