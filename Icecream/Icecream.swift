//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    var favoriteFlavorsOfIceCream: [String: String] = [
    "Joe" : "Peanut Butter and Chocolate",
    "Tim" : "Natural Vanilla",
    "Sophie" : "Mexican Chocolate",
    "Deniz" : "Natural Vanilla",
    "Tom" : "Mexican Chocolate",
    "Jim" : "Natural Vanilla",
    "Susan" : "Cookies 'N' Cream"]
    
    
    func names(forFlavor flavor: String) -> [String] {
        var array: [String] = []
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                array.append(key)
            }
        }
        
        return array
    }
    
    func count(forFlavor flavor: String) -> Int {
        var counter = 0
        for (_, value) in favoriteFlavorsOfIceCream {
            if value == flavor { counter += 1 }
        }
        
        return counter
    }
    
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    func replace(flavor: String, forPerson person: String) -> Bool {
        guard let currentFlavor = favoriteFlavorsOfIceCream[person] else { return false }
        if flavor == currentFlavor {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil  { return false }
        favoriteFlavorsOfIceCream[person] = nil
        return true
    }
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil { return false }
        favoriteFlavorsOfIceCream[person] = flavor
        return true
    }
    
    func attendeeList() -> String {
        var string = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for (index, name) in allNames.enumerated() {
            string += "\(name) likes \(favoriteFlavorsOfIceCream[name] ?? "")"
            if index < allNames.count - 1 {
                string += "\n"
            }
        }
        return string
    }
}
