//
//  CoreDataManager.swift
//  DMFindingGame
//
//  Created by Gavin Sargent on 5/1/23.
//

import CoreData
import UIKit

class CoreDataManager {
    
    static let persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Main")
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("Error loading persistent stores: \(error)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { persistentContainer.viewContext }
    
    static func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("Error saving context: \(error)")
            }
        }
    }
}
    /**
     Add the passed score to CoreData.
     */
    
    /**
     Retrieve all the scores from CoreData.
     */
   
    /**
     Calculate the high score.
     */
    func calculateHighScore() -> Int {
        return 0
    }

