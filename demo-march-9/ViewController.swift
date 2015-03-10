//
//  ViewController.swift
//  demo-march-9
//
//  Created by Michelle Venetucci Harvey on 3/9/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var movieTableView: UITableView!
    
    var movies = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.rowHeight = 150
        movies = ["Dumbo", "Taken", "The Hobbit", "Batman"]
      //  movies[0] // Dumbo
      //  movies[1] // Taken
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count + 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("trendingCellId") as TrendingCell
            
            return cell
        }
        
        var cell = tableView.dequeueReusableCellWithIdentifier("movieCellId") as MovieCell
        
        cell.movieTitle.text = movies[indexPath.row - 1]
        cell.movieDescription.text = "Action thriller abroad"
        
        return cell
    }
    

}

