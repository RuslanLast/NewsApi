//
//  NewsItemTableViewCell.swift
//  ApiNews
//
//  Created by Ruslan on 04.10.2020.
//

import UIKit
import Kingfisher

class NewsItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(title: String, description: String?, imageUrl: String, date: String) {
        titleLabel.text = title
        descriptionLabel.text = description
        dateLabel.text = formatDate(date: date)
        
        let url = URL(string: imageUrl)
        newsImageView.kf.setImage(with: url)
    }
    
    func formatDate(date: String) -> String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd.MM.yyyy"
        
        if let date = dateFormatterGet.date(from: date) {
            return dateFormatterPrint.string(from: date)
        }
        
        return dateFormatterPrint.string(from: Date())
    }
}
