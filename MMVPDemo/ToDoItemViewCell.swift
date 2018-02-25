//
//  ToDoItemViewCell.swift
//  MMVPDemo
//
//  Created by hp ios on 2/24/18.
//  Copyright © 2018 andiosdev. All rights reserved.
//

import UIKit

class ToDoItemViewCell: UITableViewCell {

    @IBOutlet weak var titleLabl: UILabel!
    @IBOutlet weak var itemNumberLbl: UILabel!
   
    /*
     *@Discussion This function is configuring cell using your view model
     *@params ViewModel
     *@return Void
     */
    
    func configure(withModelView modelView:ToDoItemPresentable)->(Void)
    {
      
        itemNumberLbl.text = modelView.id!
       
        let attributedTxt:NSMutableAttributedString = NSMutableAttributedString.init(string: modelView.textValue!)
        
        if modelView.isDone!
        {
            let range = NSRange.init(location: 0, length: attributedTxt.length)
            
            attributedTxt.addAttribute(NSAttributedStringKey.strikethroughColor,
                                       value: UIColor.lightGray,
                                       range: range)
            attributedTxt.addAttribute(NSAttributedStringKey.strikethroughStyle,
                                       value: 1,
                                       range: range)
            attributedTxt.addAttribute(NSAttributedStringKey.foregroundColor,
                                       value: UIColor.lightGray,
                                       range: range)
            
        }
        titleLabl.attributedText = attributedTxt
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
