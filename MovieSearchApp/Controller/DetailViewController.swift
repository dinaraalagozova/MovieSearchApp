//
//  DetailViewController.swift
//  MovieSearchApp
//
//  Created by Dinara Alagozova on 31.07.2022.
//

import UIKit

class DetailViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var galleryCollection: UICollectionView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var receivedIndex: Int = Int()
    var transition: RoundingTransition = RoundingTransition()
    var cameFromFav: Bool = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterImageView.image = UIImage(named: Model().itemsArray[receivedIndex].pic ?? "image1")
        movieTitleLabel.text = Model().itemsArray[receivedIndex].title
        releaseYearLabel.text = String(Model().itemsArray[receivedIndex].year ?? 0)
        ratingLabel.text = String(Model().itemsArray[receivedIndex].rating ?? 0)
        
        if cameFromFav {
            posterImageView.image = UIImage(named: Model().showLikedItems()[receivedIndex].pic ?? "image1")
            movieTitleLabel.text = Model().showLikedItems()[receivedIndex].title
            releaseYearLabel.text = String(Model().showLikedItems()[receivedIndex].year ?? 0)
            ratingLabel.text = String(Model().showLikedItems()[receivedIndex].rating ?? 0)
            
            
        } else {
            posterImageView.image = UIImage(named: Model().ratingSort()[receivedIndex].pic ?? "image1")
            movieTitleLabel.text = Model().ratingSort()[receivedIndex].title
            releaseYearLabel.text = String(Model().ratingSort()[receivedIndex.year ?? 0))
            ratingLabel.text = String(Model().ratingSort()[receivedIndex].rating ?? 0))
        }
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionProfile = .show
        transition.start = posterImageView.center
        transition.roundColor = UIColor.lightGray
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionProfile = .cancel
        transition.start = posterImageView.center
        transition.roundColor = UIColor.lightGray
        
        return transition
    }

    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? PosterFullViewController else { return
        }
        destVC.detailIndexPath = receivedIndex
        
        destVC.transitioningDelegate = self
        destVC.modalPresentationStyle = .custom
    }
}
