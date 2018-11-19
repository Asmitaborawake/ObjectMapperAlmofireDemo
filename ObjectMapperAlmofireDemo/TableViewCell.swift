//
//  TableViewCell.swift
//  ObjectMapperAlmofireDemo
//
//  Created by Asmita on 19/11/18.
//  Copyright © 2018 Asmita. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var address: UILabel!
    
    @IBOutlet var email: UILabel!
    
    @IBOutlet var mobile: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
