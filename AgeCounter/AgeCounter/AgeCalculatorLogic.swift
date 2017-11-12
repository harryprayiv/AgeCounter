// AgeCalculatorLogic.swift
//  AgeCounter
//
//  Created by Harry E. Pray IV on 9/25/16.
//  Copyright © 2016 Harry E. Pray IV. All rights reserved.
//

import Foundation

func combineDateAndTime(_ date: Date,_ time: Date) -> Date {
    let calendar = Calendar.current
    let dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
    let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: time)
    var components = DateComponents()
    components.year = dateComponents.year
    components.month = dateComponents.month
    components.day = dateComponents.day
    components.hour = timeComponents.hour
    components.minute = timeComponents.minute
    components.second = timeComponents.second
    let resultDate = calendar.date(from: components as DateComponents)
    return resultDate! as Date
}

func calculateAge(_ birthdate:Date,_ currenttime:Date)->(Double){
    let newtime = (currenttime.timeIntervalSinceReferenceDate - birthdate.timeIntervalSinceReferenceDate)
    let age = newtime
        return age
}

func breakDownComponents(_ seconds: Double) -> (String){
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = .full
    formatter.allowsFractionalUnits = true
    formatter.allowedUnits = [.year,.month,.weekOfMonth,.day,.hour,.minute,.second]
    let outputString = formatter.string(from: seconds)
    return outputString!
}
