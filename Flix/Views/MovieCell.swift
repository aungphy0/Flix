//
//  MovieCell.swift
//  Flix
//
//  Created by AUNG PHYO on 8/3/18.
//  Copyright © 2018 AUNG PHYO. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    
   
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
