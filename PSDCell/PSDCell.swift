//
//  PSDCell.swift
//  PSDCell
//
//  Created by Petros Demetrakopoulos on 13/12/15.
//  Copyright © 2015 Petros Demetrakopoulos. All rights reserved.
//

import UIKit

class PSDCell: UITableViewCell {
    let circular = UIImageView(frame: CGRectMake(160.0, 30.0, 100.0, 100.0))
    let title = UILabel(frame: CGRectMake(0.0,140.0,412.0,30.0))
    let subtitle = UILabel(frame: CGRectMake(0.0,175.0,412.0,25.0))
    let background = UIImageView(frame: CGRectMake(0.0, 0.0, 414.0, 250.0))
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.customSetup()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.customSetup()
    }

    func customSetup(){
        title.textAlignment = NSTextAlignment.Center
        title.font = UIFont(name: "Helvetica Neue", size: 25.0)
        subtitle.textAlignment = NSTextAlignment.Center
        subtitle.font = UIFont(name: "Helvetica", size: 22.0)
        circular.layer.cornerRadius = 50.0
        circular.clipsToBounds = true
      //  self.backgroundColor = UIColor.redColor()
        let blur = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let effectView = UIVisualEffectView(effect: blur)
        effectView.frame = self.frame
    
     //   self.layer.borderWidth = 2.0
     //   self.layer.borderColor = UIColor.blackColor().CGColor
       self.addSubview(background)
        self.addSubview(effectView)
        self.addSubview(circular)
        self.addSubview(title)
        self.addSubview(subtitle)
    }

}
