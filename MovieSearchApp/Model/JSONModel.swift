//
//  JSONModel.swift
//  MovieSearchApp
//
//  Created by Dinara Alagozova on 31.07.2022.
//

import Foundation

class JSONModel: Codable {
    var original_title: String?
    var poster_path: String?
    var releas_date: String?
    var overview: String?
    var popularity: Double?
    var vote_average: Double?
    var origin_country: String?
    var backdrop_path: String?
}

class TestModel {
    var testPic: String?
    var testTitle: String?
    var testYear: String?
    var testRating: String?
    
    init(testPic: String?, testTitle: String?, testYear: String?, testRating: String?) {
        self.testPic = testPic
        self.testTitle = testTitle
        self.testYear = testYear
        self.testRating = testRating
    }
}

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
