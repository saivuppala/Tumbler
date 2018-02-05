//
//  PhotoCellTableViewCell.swift
//  TumblerCP
//
//  Created by Sai Vuppala on 2/4/18.
//  Copyright © 2018 Sai Vuppala. All rights reserved.
//

import UIKit

class PhotoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var PhotoCell: UIView!
    @IBOutlet var abc: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
