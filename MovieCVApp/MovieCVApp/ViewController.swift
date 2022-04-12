//
//  ViewController.swift
//  MovieCVApp
//
//  Created by Mantha,Sai Sharma on 4/12/22.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return movies.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = colletionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
            
            cell.assignMovies( movies[indexPath.row])
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            titleOutlet.text = "Movie: \(movies[indexPath.row].title)"
            yearReleaseOutlet.text = "Released: \(movies[indexPath.row].releasedYear)"
            
           
        }
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    
    @IBOutlet weak var yearReleaseOutlet: UILabel!
    
    
    
    @IBOutlet weak var ratingOutlet: UILabel!
    

    @IBOutlet weak var revenueOutlet: UILabel!
    
    
    
    @IBOutlet weak var colletionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

