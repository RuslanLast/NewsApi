//
//  ViewController.swift
//  ApiNews
//
//  Created by Ruslan on 04.10.2020.
//

import UIKit
import SafariServices

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var newsList: [Article] = []
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        tableView.delegate = self
        requestNews()
        tableView.register(UINib(nibName: "NewsItemTableViewCell", bundle: nil), forCellReuseIdentifier:  "NewsItemTableViewCell")
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "News"
    }
    
    func showNewsUrlPage(_ index: Int) {
        if let url = URL(string: newsList[index].url ?? "") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
    }
    
    func requestNews() {
        let builder = NetworkRequestBuilder()
        builder.fetchNews(
            from: "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a5789f485bfe4adcbdc247c1d2487cc7", completion: { result in
                switch result {
                case .success(let news):
                    self.updateTableWithNews(newsResponse: news)
                case .failure(let error):
                    switch error {
                    case .badURL:
                        print("Bad URL")
                    case .requestFailed:
                        print("Network problem")
                    case .unknown:
                        print("Unknown error")
                    }
                }
                
            })
        
    }
    
    func updateTableWithNews(newsResponse: NewsResponse) {
        newsList = newsResponse.articles ?? []
        tableView.reloadData()
    }
    
    
    
    // MARK: - Configure Cells
    
    private func createNewsCell(indexPath: IndexPath) -> NewsItemTableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsItemTableViewCell", for: indexPath) as? NewsItemTableViewCell else { return NewsItemTableViewCell() }
        
        let newsItem = newsList[indexPath.row]
        
        cell.configure(title: newsItem.title ?? "News",
                       description: newsItem.description,
                       imageUrl: newsItem.urlToImage ?? "",
                       date: newsItem.publishedAt ?? "")
        
        return cell
    }
}

// MARK: - UITableViewDataSource Methods

extension NewsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = createNewsCell(indexPath: indexPath)
        
        return cell
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            newsList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
}
}
// MARK: - UITableViewDelegate

extension NewsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        showNewsUrlPage(indexPath.row)
    }
}

