//
//  FeedTableViewCell.swift
//  MyFirstProject
//
//  Created by std124 on 5/28/17.
//  Copyright © 2017 Fiat Natthapong. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupUI(news:News){
        self.iconImgView.image = news.iconImage
        self.titleLabel.text = news.title
        self.descriptionLabel.text = news.description
        self.accessoryLabel.text = "\(news.author) • \(news.view) views • \(news.createDate)"
        self.categoryLabel.text = news.category
    }

    
}
