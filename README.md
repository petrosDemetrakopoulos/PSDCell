# PSDCell
A custom cell with blured background

## Usage
1. Copy PSDCell.swift in your project
<br />2.Link the prototype cell of your table view from the storyboard with the PSDCell class.
<br />3.When you create each cell on your table view class just set a background image, a circular image, a title and a subtitle as shown below.
```Swift
 override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! PSDCell
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.title.text = "  Petros Demetrakopoulos"
        cell.subtitle.text = "iOS developer"
        cell.background.image = UIImage(named: "background.png")
        cell.circular.image = UIImage(named: "picture.jpg")
        
        return cell
    }

```

## Screenshot
### iPhone

![](https://github.com/petrosDemetrakopoulos/PSDCell/master/scrcell.png) 
##License
The MIT License (MIT)

Copyright (c) 2015 Petros Demetrakopoulos

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

