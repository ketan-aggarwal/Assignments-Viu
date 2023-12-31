//
//  MovieEntity+CoreDataProperties.swift
//  
//
//  Created by Ketan Aggarwal on 08/11/23.
//
//

import Foundation
import CoreData


extension MovieEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MovieEntity> {
        return NSFetchRequest<MovieEntity>(entityName: "MovieEntity")
    }

    @NSManaged public var id: Int64
    @NSManaged public var title: String?
    @NSManaged public var overview: String?
    @NSManaged public var vote_average: Double
    @NSManaged public var imageURL: String?

}
