//
//  MultiContextCoreData+CoreDataProperties.swift
//  AdvancedMulticontext
//
//  Created by TheRightSW on 14/06/2021.
//
//

import Foundation
import CoreData


extension MultiContextCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MultiContextCoreData> {
        return NSFetchRequest<MultiContextCoreData>(entityName: "MultiContextCoreData")
    }

    @NSManaged public var id: Int16
    @NSManaged public var name: String?
    @NSManaged public var salary: Int64
    @NSManaged public var age: Int32
    @NSManaged public var image: Data?

}

extension MultiContextCoreData : Identifiable {

}
