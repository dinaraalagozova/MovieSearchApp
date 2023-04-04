//
//  PosterFullViewController.swift
//  MovieSearchApp
//
//  Created by Dinara Alagozova on 23.03.2023.
//

import UIKit

class PosterFullViewController: UIViewController {
    
    @IBOutlet weak var fullPosterImageView: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    
    var detailIndexPath: Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullPosterImageView.image = UIImage(named: Model().itemsArray[detailIndexPath].pic ?? "image1")
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
