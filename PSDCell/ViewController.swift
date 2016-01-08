//
//  ViewController.swift
//  PSDCell
//
//  Created by Petros Demetrakopoulos on 13/12/15.
//  Copyright © 2015 Petros Demetrakopoulos. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! PSDCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        if indexPath.row == 0{
        cell.background.image = UIImage(named: "back1.png")
            cell.title.text = "Adele"
            cell.subtitle.text = "singer"
            cell.circular.image = UIImage(named: "adele.jpg")
        } else if indexPath.row == 1{
            cell.background.image = UIImage(named: "back2.png")
            cell.title.text = "Elvis Presley"
            cell.subtitle.text = "Pop star"
            cell.circular.image = UIImage(named: "elvis.jpg")
        }else{
            cell.background.image = UIImage(named: "sea.jpg")
             cell.circular.image = UIImage(named: "ballon.png")
            cell.title.text = "Balloon"
            cell.subtitle.text = "Party"
        }
    
        
        return cell
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

}

