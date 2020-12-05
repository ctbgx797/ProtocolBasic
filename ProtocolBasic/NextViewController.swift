//
//  NextViewController.swift
//  ProtocolBasic
//
//  Created by 西谷恭紀 on 2020/12/05.
//

import UIKit

protocol CatchProtocolDelegate {
    //規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var count:Int = 0
    
    var delegate:CatchProtocolDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func plusAction(_ sender: Any) {
        
        count = count+1
        label.text = String(count)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        //デリゲートメソッドを任せたクラスで発動させる
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
        
    }
}
