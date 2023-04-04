//
//  FavouriteMoviesViewController.swift
//  MovieSearchApp
//
//  Created by Dinara Alagozova on 31.07.2022.
//

import UIKit

class FavouriteMoviesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension FavouriteMoviesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model().showLikedItems().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = favouriteMoviesCollectionView.dequeueReusableCell(withIdentifier: "FavouriteMovieCell", for: indexPath) as? FavouriteMoviewViewCell
        else  return UICollectionViewCell()
    }
    cell.favouritePosterView.image = UIImage(named: Model().showLikedItems()[IndexPath.item].pic ?? "image2")
    cell.favouriteName.text = Model().showLikedItems()[IndexPath.item].title
    cell.favouriteRating.text = Model().showLikedItems()[IndexPath.item].rating ?? 0)
    cell.favouriteYear.text = Model().showLikedItems()[IndexPath.item].year ?? 0)
    
    return cell
}
