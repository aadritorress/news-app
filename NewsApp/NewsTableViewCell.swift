//
//  NewsTableViewCell.swift
//  NewsApp
//
//  Created by Adri Torres on 9/20/21.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    class NewsTableViewCellViewModel{
        let title: String
        let subtitle: String
        let imageURL: URL?
        var imageData: Data? = nil
        
        init(
            title: String,
            let subtitle: String,
            let imageURL: URL?
        ) {
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
        }
    }

static let identifier = "NewsTableViewCell"
    
    private let newsTitleLabel:  UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 25, weight: .medium)
        return label
    }()
    
    private let subtitleLabel:  UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let newsImageView:  UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .systemTeal
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(newsTitleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(newsImageView)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        newsTitleLabel.frame = CGRect(x: 10,
                                      y: 0,
                                      width: contentView.frame.size.width - 120,
                                      height: contentView.frame.size.height/2)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(with viewModel: NewsTableViewCellViewModel ){
        newsTitleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle

        
        //IMAGE <<
        
    }
    
}
