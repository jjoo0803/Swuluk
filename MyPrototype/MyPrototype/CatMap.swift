//
//  CatMap.swift
//  MyPrototype
//
//  Created by 오지연 on 2018. 1. 16..
//  Copyright © 2018년 mim. All rights reserved.
//

import UIKit
import CoreLocation

class CatMap: NSObject {
    var title: String?
    var image: UIImage?
    var coordinate: CLLocationCoordinate2D
    init (title: String, latitude: Double, longitude: Double, image: UIImage) {
        self.title = title
        self.coordinate = CLLocationCoordinate2D()
        self.coordinate.latitude = latitude
        self.coordinate.longitude = longitude
        self.image = image
        // 배열
        var info:[String: String] = ["log": "2018.01.11 10:00AM", "type": "food",
                                                  "desc": "밥잘먹음"]
    }
}


