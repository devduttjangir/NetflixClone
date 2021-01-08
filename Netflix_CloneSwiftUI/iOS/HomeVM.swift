//
//  HomeVM.swift
//  Netflix_CloneSwiftUI
//
//  Created by Devdutt Jangir on 08/01/21.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories : [String] {
        movies.keys.map { String ($0) }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending New"] = exampleMovies
        movies["Stand-up Comedy"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Sci-Fi"] = exampleMovies.shuffled()
    }
    
    func getMovies(forCat cat: String) -> [Movie] {
        movies[cat] ?? []
    }
}
