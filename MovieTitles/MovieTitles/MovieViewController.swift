//
//  MovieViewController.swift
//  MovieTitles
//
//  Created by Ketan Aggarwal on 08/11/23.
//

import UIKit

protocol MovieDisplayLogic: AnyObject {
    func displayPopularMovies(viewModel: MovieViewModel)
       //func displayError(message: String)
}

class MovieViewController: UIViewController , MovieDisplayLogic{
    
    var interactor: MovieBusinessLogic?
    var movieTitles: [String] = []
    

    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MovieViewController - View Did Load")
        print("hello")
        setup()
        setupTable()
        interactor?.fetchPopularMovies()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
           print("MovieViewController - View Will Appear")
    }
    
    func setupTable(){
        myTable.dataSource = self
        myTable.delegate = self
        myTable.isHidden = false
    }
   
    func displayPopularMovies(viewModel: MovieViewModel) {
        movieTitles = viewModel.movieTitles
        DispatchQueue.main.async {
            self.myTable.reloadData()
        }
      
    }
    
    private func setup(){
        let viewController = self
        let interactor = MovieInteractor()
        let worker = MovieWorker()
        let presenter = MoviePresenter()
        viewController.interactor = interactor
        interactor.worker = worker
        interactor.presenter = presenter
        presenter.viewController = viewController
    }

}

extension MovieViewController : UITableViewDelegate, UITableViewDataSource{
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath)
        cell.textLabel?.text = movieTitles[indexPath.row]
        return cell
    }
    
}
