//
//  ViewController.swift
//  Raiden
//
//  Created by nori on 2020/11/29.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    func persistentContainer() -> NSPersistentContainer {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let context = persistentContainer().newBackgroundContext()
        context.perform {
            let battery = Battery.insertBatteryInContext(in: context)
            battery.identifier = UUID()
            battery.purchasedAt = Date()
            try! context.save()
        }
    }
}

