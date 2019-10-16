//
//  HomeViewController.swift
//  BreweryFinder
//
//  Created by Ashley Herbert on 5/29/19.
//  Copyright © 2019 Ashley Herbert. All rights reserved.

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var searchInput: UITextField!
    @IBAction func searchView(_ sender: Any) {
        performSegue(withIdentifier: "searchSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "searchSegue",
            let destinationVC = segue.destination as? SearchViewController {
            destinationVC.searchTextString = searchInput.text!
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
