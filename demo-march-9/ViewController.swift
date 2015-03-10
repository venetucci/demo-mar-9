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
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
        return "Movies"
        } else {
            return "Trending"
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return movies.count
        } else {
            return 4
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("movieCellId") as MovieCell
            
            cell.movieTitle.text = movies[indexPath.row]
            cell.movieDescription.text = "Action thriller abroad"
            
            return cell
            
        } else {
            var cell = tableView.dequeueReusableCellWithIdentifier("trendingCellId") as TrendingCell
            return cell
        }
    }
    

}

