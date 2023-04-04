//
//  ViewController.swift
//  MovieSearchApp
//
//  Created by Dinara Alagozova on 29.07.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var movieSearchBar: UISearchBar!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        movieSearchBar.delegate = self
        
        let xibCell = UINib(nibName: "MovieCollectionViewCell", bundle: nil)
        mainCollectionView.register(xibCell, forCellWithReuseIdentifier: "MovieCell")
        mainCollectionView.reloadData()
    }

// https://api.themoviedb.org/3/movie/550?api_key=6ed8540995255606cd7e35c01a726540

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as? MovieCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.posterPreviewImageView.image = UIImage(named: itemsArray[indexPath.row].pic ?? "image1")
        cell.movieTitleLabel.text = itemsArray[indexPath.row].testTitle
        cell.releaseYearLabel.text = itemsArray[indexPath.row].testYear
        cell.ratingLabel.text = itemsArray[indexPath.row].testRating
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let destController = storyboard?.instantiateViewController(withIdentifier: "DetailViewControllerS") as? DetailViewController else {
            return
        }
        destController.receivedIndex = indexPath.row
        navigationController?.pushViewController(destController, animated: true)
    }
}
