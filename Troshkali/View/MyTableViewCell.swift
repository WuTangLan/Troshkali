//
//  MyTableViewCell.swift
//  Troshkali
//
//  Created by Marcus Perovic on 21.10.2019.
//  Copyright © 2020 Marcus Perovic. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    // UI
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(title: String, percentage: String) {
        self.titleLabel.text = title
        self.percentageLabel.text = percentage
    }
}
