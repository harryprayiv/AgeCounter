//
//  TimerStateMachine.swift
//  AgeCounter
//
//  Created by Harry E. Pray IV on 9/29/16.
//  MIT Open Source License
//
import Foundation

func toggleCurrentState(currentState:Bool, statestream:String)->(Bool,Date,String){
    let finalstate = !currentState
    let date = Date()
    return (finalstate, date, statestream)
}


