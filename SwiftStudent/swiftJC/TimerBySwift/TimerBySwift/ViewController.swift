//
//  ViewController.swift
//  TimerBySwift
//
//  Created by dwq on 16/9/13.
//  Copyright © 2016年 wq. All rights reserved.
//

import UIKit
var isStart:Bool = false
var timeArray:NSArray = []
var timeLabel:UILabel?
var timer:NSTimer?
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let width = UIScreen.mainScreen().bounds.width;
        let frame = CGRectMake(30, 84, width - 60 , 120)
        timeLabel = UILabel(frame:frame)
        timeLabel!.backgroundColor = UIColor.blackColor()
        timeLabel!.textAlignment = NSTextAlignment.Center
        timeLabel!.textColor = UIColor.whiteColor()
        timeLabel!.font = UIFont.systemFontOfSize(80)
        timeLabel!.text = "00:00";
        self.view.addSubview(timeLabel!)
        
        for var a = 0; a < 4; a++ {
            //强制类型转换CGFloat(a)
            let x = 30 + 10 * CGFloat(a) + (width - 90)/4.0 * CGFloat(a)
            let button = UIButton(frame:CGRectMake(x, 254, (width - 90)/4.0 , 40))
            button.backgroundColor = UIColor.redColor()
            button.tag = a + 10;
            button.addTarget(self, action: "timeButton:", forControlEvents: UIControlEvents.TouchUpInside)
            switch a {
            case 0:
                button.setTitle("1 分", forState: UIControlState.Normal)
            case 1:
                button.setTitle("3 分", forState: UIControlState.Normal)
            case 2:
                button.setTitle("5 分", forState: UIControlState.Normal)
            case 3:
                button.setTitle("秒", forState: UIControlState.Normal)
            default: break
            }
            self.view.addSubview(button)
        }
        let startOrStop = UIButton(frame:CGRectMake(30, 304, (width - 90)/4.0 * 3.0 + 20 , 40))
        startOrStop.backgroundColor = UIColor.orangeColor()
        startOrStop.setTitle("启动/停止", forState: UIControlState.Normal)
        startOrStop.addTarget(self, action: "startOrStop:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(startOrStop)
        let reset = UIButton(frame: CGRectMake(startOrStop.frame.origin.x + startOrStop.frame.size.width + 10, 304, (width - 90)/4.0, 40))
        reset.backgroundColor = UIColor.orangeColor()
        reset.setTitle("复位", forState: UIControlState.Normal)
        reset.addTarget(self, action: "reset:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(reset)
        
        timeArray = [60,180,300,1]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func timeButton(button:UIButton){
        var totalSecond = self.changeTimeFromMintueToSecond()
        let shouldAdd = timeArray[button.tag - 10].intValue
        totalSecond += Int(shouldAdd)
        timeLabel?.text = self.changeTimeFromSecondToMintue(totalSecond) as String
    }
    
    func startOrStop(button:UIButton){
        isStart = !isStart
        //三目运算 (isStart ? "启动" : "停止")
        NSLog("%@", (isStart ? "启动" : "停止"))
        if isStart {
            if self.changeTimeFromMintueToSecond() > 0{
                timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
            }else{
                isStart = !isStart
                if (timer != nil) {
                    timer?.invalidate()
                }
            }
        }else{
            if (timer != nil) {
            timer?.invalidate()
            }
        }
    }
    func reset(button:UIButton){
        timeLabel?.text = "00:00"
        if isStart {
            isStart = !isStart
        }
        if (timer != nil) {
            timer?.invalidate()
        }
    }
    func changeTimeFromMintueToSecond() ->Int{
        let time = timeLabel?.text!
        let timeLabelArray = time?.componentsSeparatedByString(":")
        let mintue = Int(timeLabelArray![0])
        let second = Int((timeLabelArray?.last)!)
        let totalSecond = mintue! * 60 + second!
        return totalSecond
    }
    func changeTimeFromSecondToMintue(second:Int) ->NSString{
        var newMintue = "00";
        if second / 60 / 10 >= 1{
            newMintue = NSString(format: "%d", second / 60) as String
        }else{
            newMintue = NSString(format: "0%d", second / 60) as String
        }
        var newSecond = "00"
        if second % 60 / 10 >= 1{
            newSecond = NSString(format: "%d", second % 60) as String
        }else{
            newSecond = NSString(format: "0%d", second % 60) as String
        }
        return NSString(format: "%@:%@", newMintue,newSecond) as String
    }
    func updateTimer(timer:NSTimer){
        var time = self.changeTimeFromMintueToSecond()
        time -= 1
        timeLabel?.text = self.changeTimeFromSecondToMintue(time) as String
        if time == 0 {
            isStart = !isStart
            timer.invalidate()
            let alterView = UIAlertView()
            alterView.title = "计时结束"
            alterView.addButtonWithTitle("确定")
            alterView.show()
        }
    }
}

