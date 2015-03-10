//
//  MovieCell.swift
//  demo-march-9
//
//  Created by Michelle Venetucci Harvey on 3/9/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieThumbnail: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
