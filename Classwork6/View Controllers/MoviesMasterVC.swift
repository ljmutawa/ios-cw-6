//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by laila al mutawa on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie = Movie(movieName: "nil", movieReleaseDate: 2004, actors: ["me"], rating: 9.98, pgRating: "pg13")

class MoviesMasterVC: UIViewController {
        
    @IBOutlet weak var marvelImage0 : UIButton!
    @IBOutlet weak var marvelImage1 : UIButton!
    @IBOutlet weak var marvelImage2 : UIButton!
    @IBOutlet weak var marvelImage3 : UIButton!
    @IBOutlet weak var marvelImage4 : UIButton!
    @IBOutlet weak var marvelImage5 : UIButton!

    @IBOutlet weak var dcImage0 : UIButton!
    @IBOutlet weak var dcImage1 : UIButton!
    @IBOutlet weak var dcImage2 : UIButton!
    @IBOutlet weak var dcImage3 : UIButton!
    @IBOutlet weak var dcImage4 : UIButton!
    @IBOutlet weak var dcImage5 : UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        // Do any additional setup after loading the view.
        
    }
    func setMarvelImages() {
        marvelImage0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for: .normal)
        marvelImage1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for: .normal)
        marvelImage2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for: .normal)
        marvelImage3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for: .normal)
        marvelImage4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for: .normal)
        marvelImage5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for: .normal)
    }
    func setDCImages() {
        dcImage0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName), for: .normal)
        dcImage1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName), for: .normal)
        dcImage2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName), for: .normal)
        dcImage3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName), for: .normal)
        dcImage4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName), for: .normal)
        dcImage5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName), for: .normal)
    }
  
    @IBAction func marvelBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedMovie = MarvelMovieData[index]
        performSegue(withIdentifier: "Details", sender: nil)
    }
    
    @IBAction func dcBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedMovie = DCMovieData[index]
        performSegue(withIdentifier: "Details", sender: nil)
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
