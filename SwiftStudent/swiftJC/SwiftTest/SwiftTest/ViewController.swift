//
//  ViewController.swift
//  SwiftTest
//
//  Created by dwq on 16/8/26.
//  Copyright © 2016年 wq. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let === 常量 var === 变量，可变
        let width = UIScreen.mainScreen().bounds.width
        let height = UIScreen.mainScreen().bounds.height
        self.tableView = UITableView(frame: CGRectMake(0, 0, width, height), style: UITableViewStyle.Plain)
        //Swift里要获得某个类，这么写“类名.self”
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = "4546464"
        cell.imageView?.image = UIImage(named: "")
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexPaths = NSArray(objects: indexPath)
        self.tableView.reloadRowsAtIndexPaths(indexPaths as! [NSIndexPath], withRowAnimation: UITableViewRowAnimation.Top)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

