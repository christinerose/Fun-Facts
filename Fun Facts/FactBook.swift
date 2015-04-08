//
//  FactBook.swift
//  Fun Facts
//
//  Created by Christine Rose on 4/3/15.
//  Copyright (c) 2015 Christine Rose. All rights reserved.
//

import Foundation
//foundation is a framework: reusable code for common tasks that we can build on top of
//example, we don't have to code the "touch" part, the UIKit does that...
//we don't have to use all the frameworks all the time, so we're just importing the Foundation one here

//creating a stored property in a struct

struct FactBook {
    let factsArray = ["Ants stretch when they waker up in the morning.",
        "Ostritches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you're an adult, you will have only 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "The country of France fits inside of Texas.",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the earth when the Great Pyramid was being built."]

    func randomFact() -> String {
        /*var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))*/
        //too unreadable, refactor as:
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber] //go to ViewController to create instance of FactBook struct
    }


}

