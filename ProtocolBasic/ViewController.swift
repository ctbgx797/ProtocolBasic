//
//  ViewController.swift
//  ProtocolBasic
//
//  Created by 西谷恭紀 on 2020/12/05.
//

import UIKit

class ViewController: UIViewController,CatchProtocolDelegate {

    @IBOutlet var label: UILabel!
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func catchData(count: Int) {
        
    }

    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
        
    }
    
}

