//
//  TimeUpdater.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 30/10/23.
//

import Foundation
import SwiftUI


struct TimeUpdater {
    
    @AppStorage("TimeForNewTips") var newTips: Double = Date().timeIntervalSinceReferenceDate
    
   

    func isNowPast(hour targetHour: Int, minute targetMinute: Int) -> Bool{
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        guard let hour = components.hour, let minute = components.minute else {return false}
        
        let timePast = (hour * 3600 + minute * 60) > (targetHour * 3600 + targetMinute * 60)
        return timePast
    }
    
    func isNowCloseTo(hour targetHour: Int, minute targetMinute: Int, tolerance: TimeInterval = 60)-> Bool {
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        guard let hour = components.hour, let minute = components.minute else {return false}
        
        let distance = TimeInterval(abs((hour * 3600 + minute * 60) - (targetHour * 3600 + targetMinute * 60)))
        return (distance < tolerance)
    }
    
    func setupDateUpdate(){
        //Check immedietely on launch/appear
        if Calendar.current.isDate(Date(), equalTo: Date(timeIntervalSinceReferenceDate: newTips), toGranularity: .day) == false && isNowCloseTo(hour: 3, minute: 49){
            newTips = Date().timeIntervalSinceReferenceDate
        }
        
    }
    
}
