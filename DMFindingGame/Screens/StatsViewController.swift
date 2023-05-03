//
//  StatsViewController.swift
//  DMFindingGame
//
//  Created by Gavin Sargent on 5/1/23.
//

import UIKit

class StatsViewController: UITableViewController {
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        DataController.shared.fetchScores()
    }
}

extension StatsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataController.shared.scores.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath)
        
        let score = DataController.shared.scores[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        configuration.text = String(score.score)
        
        cell.contentConfiguration = configuration
        
        return cell
    }
    
    
}

