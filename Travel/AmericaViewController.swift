//
//  AmericaViewController.swift
//  Travel
//
//  Created by mogmet on 2020/02/07.
//  Copyright © 2020 asahi.com. All rights reserved.
//

import UIKit

class AmericaViewController: UIViewController {
    private var president: String = ""
    
    @IBOutlet weak var usaLbale: UILabel!
    func inject(president: String) {
        self.president = president
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usaLbale.text = president
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
