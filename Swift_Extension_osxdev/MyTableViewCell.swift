//
//  MyTableViewCell.swift
//  Swift_Extension_osxdev
//
//  Created by hothead on 2016. 10. 22..
//  Copyright © 2016년 hothead. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
