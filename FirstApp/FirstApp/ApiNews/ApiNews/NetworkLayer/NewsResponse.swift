//
//  NewsResponse.swift
//  ApiNews
//
//  Created by Ruslan on 04.10.2020.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]?
}

struct Article: Codable {
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}
