//
//  DataController.swift
//  DMFindingGame
//
//  Created by Gavin Sargent on 5/2/23.
//

import CoreData

class DataController {
    
    static let shared = DataController()
    
    var scores: [Score] = []
    
    private lazy var fetchRequest: NSFetchRequest<Score> = {
        let request = NSFetchRequest<Score>(entityName: "Score")
        request.predicate = NSPredicate(value: true)
        let sortDescriptor = NSSortDescriptor(key: "score", ascending: false)
        request.sortDescriptors = [sortDescriptor]
        return request
    }()
    
    func addScore(score: Int) {
        
        if score != 0 {
            Score(score: score)
            CoreDataManager.saveContext()
        }
    }
    
    func fetchScores () {
        
        scores = (try? CoreDataManager.context.fetch(fetchRequest)) ?? []
        
    }
    
    func calculateHighScore () -> Int {
//        guard let score = scores.first?.score else {return nil}
//        return Int(score)
        
        return Int(scores.first?.score ?? 0)
    }
}
