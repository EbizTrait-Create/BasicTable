//
//  CellBasic.swift
//  BasicTable
//
//  Created by PCT48 on 8/1/19.
//  Copyright © 2019 eBizTrait. All rights reserved.
//

import UIKit

class CellBasic: UITableViewCell {

    
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
