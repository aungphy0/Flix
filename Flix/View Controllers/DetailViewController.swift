//
//  DetailViewController.swift
//  Flix
//
//  Created by AUNG PHYO on 8/3/18.
//  Copyright © 2018 AUNG PHYO. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie{
            titleLabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overviewLabel.text = movie["overview"] as? String
            
            let backdropPathString = movie["backdrop_path"] as! String
            let posterPathString = movie["poster_path"] as! String
            let baseUrlString = "https://image.tmdb.org/t/p/w500"
            
            let backdropUrl = URL(string: baseUrlString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backdropUrl)
            let posterUrl = URL(string: baseUrlString + posterPathString)!
            posterImageView.af_setImage(withURL: posterUrl)
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
