//
//  Scores+Convenience.swift
//  DMFindingGame
//
//  Created by Gavin Sargent on 5/2/23.
//

import CoreData

extension Score {

    @discardableResult convenience init(score: Int, context:NSManagedObjectContext = CoreDataManager.context) {
        self.init(context: context)
        self.score = Int16(score)
    }
}
