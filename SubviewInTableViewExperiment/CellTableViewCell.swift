//
//  CellTableViewCell.swift
//  SubviewInTableViewExperiment
//
//  Created by Gior Fasolini on 19/02/19.
//  Copyright © 2019 Gior Fasolini. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var dummyImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }

}
