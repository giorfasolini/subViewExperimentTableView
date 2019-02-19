//
//  TagBox.swift
//  InstagramTagsExperiment
//
//  Created by Gior Fasolini on 21/01/19.
//  Copyright © 2019 Gior Fasolini. All rights reserved.
//

import UIKit

class TagBox: UIView {

    var boxName: UILabel!

    
    init(frame: CGRect, boxName: UILabel) {

        self.boxName = boxName
        
        super.init(frame: frame)
        self.addSubview(boxName)

    }
    
    required init?(coder aDecoder: NSCodegit push -u origin masterr) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
