//
//  Model.swift
//  MovieSearchApp
//
//  Created by Dinara Alagozova on 30.03.2023.
//

import Foundation
import UIKit

class Item {
    var id: Int?
    var pic: String?
    var title: String?
    var year: Int?
    var rating: Double?
    var isLiked: Bool
    
    init(id: Int?, pic: String?, title: String?, year: Int?, rating: Double?, isLiked: Bool) {
        self.id = id
        self.pic = pic
        self.title = title
        self.year = year
        self.rating = rating
        self.isLiked = isLiked
    }
}

class Model {
    var itemsArray: [Item] = [
        Item(id: 0, pic: "image1", title: "Фильм 1", year: 2001, rating: 4.7, isLiked: true),
        Item(id: 1, pic: "image2", title: "Фильм 2", year: 2003, rating: 4.1, isLiked: false),
        Item(id: 2, pic: "image3", title: "Фильм 3", year: 2013, rating: 4.3, isLiked: false),
        Item(id: 3, pic: "image4", title: "Фильм 4", year: 2001, rating: 4.8, isLiked: true),
        Item(id: 4, pic: "image5", title: "Фильм 5", year: 2015, rating: 9.7, isLiked: false),
        Item(id: 5, pic: "image6", title: "Фильм 6", year: 2001, rating: 4.7, isLiked: false),
        Item(id: 6, pic: "image7", title: "Фильм 7", year: 2001, rating: 4.6, isLiked: false),
        Item(id: 7, pic: "image8", title: "Фильм 8", year: 2001, rating: 5.3, isLiked: false),
        Item(id: 8, pic: "image9", title: "Фильм 9", year: 2001, rating: 4.4, isLiked: true),
        Item(id: 9, pic: "image10", title: "Фильм 10", year: 2001, rating: 2.7, isLiked: false),
        Item(id: 10, pic: "image11", title: "Фильм 11", year: 2001, rating: 1.7, isLiked: false),
        Item(id: 11, pic: "image12", title: "Фильм 12", year: 2001, rating: 3.7, isLiked: true),
        Item(id: 12, pic: "image13", title: "Фильм 13", year: 2001, rating: 8.7, isLiked: false),
        Item(id: 13, pic: "image14", title: "Фильм 14", year: 2001, rating: 7.7, isLiked: false),
        Item(id: 14, pic: "image15", title: "Фильм 15", year: 2001, rating: 1.7, isLiked: false)]
    
    func showLikedItems() -> [Item] {
        for i in itemsArray {
            if i.isLiked == true {
                likedMoviesArray.append(i)
            }
        }
        return likedMoviesArray
    }
}
