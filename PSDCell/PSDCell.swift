//
//  PSDCell.swift
//  PSDCell
//
//  Created by Petros Demetrakopoulos on 13/12/15.
//  Copyright © 2015 Petros Demetrakopoulos. All rights reserved.
//

import UIKit

class PSDCell: UITableViewCell {
    let circular = UIImageView(frame: CGRect(x: UIScreen.main.bounds.midX - 50.0, y: 30.0, width: 100.0, height: 100.0))
    let title = UILabel(frame: CGRect(x:0.0,y:140.0,width:UIScreen.main.bounds.width,height:30.0))
    let subtitle = UILabel(frame: CGRect(x:0.0,y:175.0,width:UIScreen.main.bounds.width,height:25.0))
    let background = UIImageView(frame: CGRect(x:0.0,y:0.0,width:UIScreen.main.bounds.width,height:250.0))
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
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
        title.textAlignment = NSTextAlignment.center
        title.font = UIFont(name: "Helvetica Neue", size: 25.0)
        subtitle.textAlignment = NSTextAlignment.center
        subtitle.font = UIFont(name: "Helvetica", size: 22.0)
        circular.layer.cornerRadius = 50.0
        circular.clipsToBounds = true
        self.backgroundColor = UIColor.red
        let blur = UIBlurEffect(style: UIBlurEffectStyle.light)
        let effectView = UIVisualEffectView(effect: blur)
        effectView.frame = CGRect(x:0.0,y:0.0,width:UIScreen.main.bounds.width,height: 255)
        self.addSubview(background)
        self.addSubview(effectView)
        self.addSubview(circular)
        self.addSubview(title)
        self.addSubview(subtitle)
    }
    
}
