//
//  Date.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/29/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation

extension Date {
    
    static func dateComponentFrom(second: Double) -> DateComponents {
        let interval = TimeInterval(second)
        let date1 = Date()
        let date2 = Date(timeInterval: interval, since: date1)
        let c = NSCalendar.current
        
        var components = c.dateComponents([.year,.month,.day,.hour,.minute,.second,.weekday], from: date1, to: date2)
        components.calendar = c
        return components
    }
    
}
