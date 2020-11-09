//
//  NetworkRequestBuilder.swift
//  ApiNews
//
//  Created by Ruslan on 04.10.2020.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case requestFailed
    case unknown
}

class NetworkRequestBuilder {
    
    func fetchNews(from urlString: String, completion: @escaping (Result<NewsResponse, NetworkError>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(.badURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {
                        let data = try JSONDecoder().decode(NewsResponse.self, from: data)
                        completion(.success(data))
                    } catch {
                        completion(.failure(.unknown))
                    }
                } else if error != nil {
                    completion(.failure(.requestFailed))
                } else {
                    completion(.failure(.unknown))
                }
            }
        }.resume()
    }
}
