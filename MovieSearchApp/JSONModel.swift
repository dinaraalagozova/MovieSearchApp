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
