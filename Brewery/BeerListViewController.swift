//
//  BeerListViewController.swift
//  Brewery
//
//  Created by Terry on 2022/01/19.
//

import UIKit

class BeerListViewController: UITableViewController {
    
    var beerList = [Beer]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UINavigationBar
        title = "브루어리"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //add Cell Register
        tableView.register(BeerListCell.self, forCellReuseIdentifier: "BeerListCell")
        
        //셀 높이 설정
        tableView.rowHeight = 150
        
    }
}

//UITableView DataSource, Delegate
extension BeerListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerListCell", for: indexPath) as! BeerListCell 
        
        let beer = beerList[indexPath.row]
        cell.configure(with: beer)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedBeer = beerList[indexPath.row]
        let detailViewController = BeerDetailViewController()
        
        detailViewController.beer = selectedBeer
        self.show(detailViewController, sender: nil)
    }
}
