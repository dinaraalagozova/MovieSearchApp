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
    
    var testArray: [TestModel] = [
        TestModel(testPic: "image1", testTitle: "Фильм 1", testYear: "2001", testRating: "4.7"),
        TestModel(testPic: "image2", testTitle: "Фильм 2", testYear: "2003", testRating: "4.1"),
        TestModel(testPic: "image3", testTitle: "Фильм 3", testYear: "2013", testRating: "4.3"),
        TestModel(testPic: "image4", testTitle: "Фильм 4", testYear: "2001", testRating: "4.8"),
        TestModel(testPic: "image5", testTitle: "Фильм 5", testYear: "2015", testRating: "9.7"),
        TestModel(testPic: "image6", testTitle: "Фильм 6", testYear: "2001", testRating: "4.7"),
        TestModel(testPic: "image7", testTitle: "Фильм 7", testYear: "2001", testRating: "4.6"),
        TestModel(testPic: "image8", testTitle: "Фильм 8", testYear: "2001", testRating: "5.3"),
        TestModel(testPic: "image9", testTitle: "Фильм 9", testYear: "2001", testRating: "4.4"),
        TestModel(testPic: "image10", testTitle: "Фильм 10", testYear: "2001", testRating: "2.7"),
        TestModel(testPic: "image11", testTitle: "Фильм 11", testYear: "2001", testRating: "1.7"),
        TestModel(testPic: "image12", testTitle: "Фильм 12", testYear: "2001", testRating: "3.7"),
        TestModel(testPic: "image13", testTitle: "Фильм 13", testYear: "2001", testRating: "8.7"),
        TestModel(testPic: "image14", testTitle: "Фильм 14", testYear: "2001", testRating: "7.7"),
        TestModel(testPic: "image15", testTitle: "Фильм 15", testYear: "2001", testRating: "1.7")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        movieSearchBar.delegate = self
    }

// https://api.themoviedb.org/3/movie/550?api_key=6ed8540995255606cd7e35c01a726540

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as? MovieCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.posterPreviewImageView.image = UIImage(named: testArray[indexPath.row].testPic ?? "image1")
        cell.movieTitleLabel.text = testArray[indexPath.row].testTitle
        cell.releaseYearLabel.text = testArray[indexPath.row].testYear
        cell.ratingLabel.text = testArray[indexPath.row].testRating
        return cell
    }
}
