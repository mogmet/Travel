//
//  CountryViewController.swift
//  Travel
//
//  Created by mogmet on 2020/02/14.
//  Copyright © 2020 asahi.com. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    fileprivate let countries = ["Japan", "china - ikitakunai", "Bali", "Yamaguchi"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension CountryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController()
        let countryName = countries[indexPath.row]
        let action = UIAlertAction(title: countryName, style: .default)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

extension CountryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell") as? CountryCell else {
            return UITableViewCell()
        }
        let countryName = countries[indexPath.row]
        cell.configre(countryName: countryName)
        return cell
    }

}
