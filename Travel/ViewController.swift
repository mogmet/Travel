//
//  ViewController.swift
//  Travel
//
//  Created by mogmet on 2020/02/07.
//  Copyright © 2020 asahi.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var travelLabel: UILabel!
    @IBOutlet private weak var travelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? String,
            let viewController = segue.destination as? AmericaViewController else { return }
        viewController.inject(president: sender)
    }

    @IBAction private func onTapTravelButton(_ sender: Any) {
        travelLabel.text = "Travel ikitai"
    }
    
    @IBAction private func onTapAmricaButton(_ sender: Any) {
        performSegue(withIdentifier: "america", sender: "common baybe")
    }
}

