//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by laila al mutawa on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var moviePosterImage: UIImageView!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatingView: UIView!
    @IBOutlet weak var pgRatingLabel: UILabel!
    @IBOutlet weak var pgRatingView: UIView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var releaseDateView: UIView!
    
    @IBOutlet weak var actorImgView1: UIImageView!
    @IBOutlet weak var actorNameLabel1: UILabel!
    @IBOutlet weak var actorImgView2: UIImageView!
    @IBOutlet weak var actorNameLabel2: UILabel!
    @IBOutlet weak var actorImgView3: UIImageView!
    @IBOutlet weak var actorNameLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    func setMovieDetails() {
        // Movie Poster
        moviePosterImage.image = UIImage(named: "\(selectedMovie.movieName)")
        // Labels
        movieRatingLabel.text = "\(selectedMovie.rating)"
        pgRatingLabel.text = "\(selectedMovie.pgRating)"
        releaseDateLabel.text = "\(selectedMovie.movieReleaseDate)"
        // Actor Pics
        actorImgView1.image = UIImage(named: "\(selectedMovie.actors[0])")
        actorImgView2.image = UIImage(named: "\(selectedMovie.actors[1])")
        actorImgView3.image = UIImage(named: "\(selectedMovie.actors[2])")
        // Actor Names
        actorNameLabel1.text = "\(selectedMovie.actors[0])"
        actorNameLabel2.text = "\(selectedMovie.actors[1])"
        actorNameLabel3.text = "\(selectedMovie.actors[2])"
    }
    
    func configureUI() {
        movieRatingView.layer.cornerRadius = 15
        pgRatingView.layer.cornerRadius = 15
        releaseDateView.layer.cornerRadius = 15
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
