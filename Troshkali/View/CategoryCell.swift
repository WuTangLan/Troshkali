//
//  CategoryCell.swift
//  Troshkali
//
//  Created by Marcus Perovic on 21.10.2019.
//  Copyright © 2020 Marcus Perovic. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
  
    }
}
