//
//  CoreDataModelHelper.swift
//  Raiden
//
//  Created by nori on 2020/11/29.
//

import Foundation
import CoreData

extension Battery: NSManagedObjectHelping {
    static let entityName = "Battery"
}

protocol NSManagedObjectHelping: NSManagedObject {
    static var entityName: String { get }
}

extension NSManagedObjectHelping {
    static func insertBatteryInContext(in context: NSManagedObjectContext) -> Self {
        let description = NSEntityDescription.entity(forEntityName: self.entityName, in: context)!
        return self.init(entity: description, insertInto: context)
    }
    
}
