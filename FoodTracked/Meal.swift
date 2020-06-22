//
//  Meal.swift
//  FoodTracked
//
//  Created by Thomas on 22/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initializer
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        //Name mustn't be empty
        guard !name.isEmpty else {
            return nil
        }
        
        //The rating must be between 0 and 5 inclusive
        guard  (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        //Initializing values
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
    
}
