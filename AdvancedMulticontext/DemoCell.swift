//
//  dataTableViewCell.swift
//  CoreIntro
//
//  Created by TheRightSW on 26/05/2021.
//

import UIKit

class DemoCell: UITableViewCell {
  
      //MARK:- TableViewCell IBOutlets
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblsal: UILabel!
    @IBOutlet weak var lblage: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

   
    }

}
