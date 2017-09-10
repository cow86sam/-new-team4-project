//
//  TextView01TexViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/10.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class TextView01TexViewController: UIViewController,UITextViewDelegate {

    
    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var nameText: UITextView!
    @IBAction func button(_ sender: Any) {
        addMessage()
        self.navigationController?.popViewController(animated: true)
        
        /*
        if nameText.isHidden == true{
            nameText.isHidden = false
        } else {
            nameText.isHidden = true
        }*/
    }
    
    func addMessage() {
        var msg:Message = Message(title: "報告")
        msg.setData(data: "下禮拜小組上台報告台灣所有的古蹟文化。")
        Data.getInstance().addMessage(subIndex: 0, msg: msg)
    }
    
    @IBAction func deleteData(_ sender: Any) {
        print("====deleteData=====")
        var subIndex:Int = Data.getInstance().subjectNow
        var msgIndex:Int = Data.getInstance().messageNow
        Data.getInstance().removeMessage(subIndex: subIndex, msgIndex: msgIndex)
        self.navigationController?.popViewController(animated: true)
    }
    
    let blue = UIImage(named:"blueView")
    let red = UIImage(named:"redView")
    let orange = UIImage(named:"orangeView")
    let green = UIImage(named:"greenView")
    let black = UIImage(named:"blackView")
    let yellow = UIImage(named:"yelloView")
    
    var kind = 4
    var color:UIImage?
//    if kind == 0 {
//
//    color = blue!
//
//    }else if kind == 1 {
//    color = red!
//    }else if kind == 2 {
//    color = orange!
//    }else if kind == 3 {
//    color = green!
//    }else if kind == 4 {
//    color = black!
//    }else   {
//    color = red!
//    }
//    myImage.image = color
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var subIndex:Int = Data.getInstance().subjectNow
        var msgIndex:Int = Data.getInstance().messageNow
        var msg:Message = Data.getInstance().getMessage(subIndex: subIndex, msgIndex: msgIndex)

        textField.text = msg.data
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
