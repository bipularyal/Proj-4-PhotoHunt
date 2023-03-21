//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Do codepath asssignment",
                 description: "Complete all work before monday 2pm"),
            Task(title: "Mathsassignment complete",
                 description: "Remember we have deadline today so complete the assignment"),
            Task(title: "Wake up at 8 tomorrow",
                 description: "You have college from 8:30. So wake up early")
        ]
    }
}
