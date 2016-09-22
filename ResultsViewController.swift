//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Adam DeCaria on 2016-09-21.
//  Copyright © 2016 Adam DeCaria. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController: UIViewController {

    // MARK: Properties
    var matchWinner: String = ""
    
    @IBOutlet var winnerLabel: UILabel!
    @IBOutlet var winnerPic: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.winnerLabel.text = matchWinner
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
