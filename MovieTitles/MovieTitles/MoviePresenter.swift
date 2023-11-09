



import Foundation

protocol MoviePresentationLogic {
    func presentPopularMovies(viewModel: MovieViewModel)
}

class MoviePresenter: MoviePresentationLogic {
    weak var viewController: MovieDisplayLogic?

    func presentPopularMovies(viewModel: MovieViewModel) {
        viewController?.displayPopularMovies(viewModel: viewModel)
    }
}
