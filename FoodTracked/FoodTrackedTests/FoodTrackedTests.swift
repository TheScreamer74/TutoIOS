//
//  FoodTrackedTests.swift
//  FoodTrackedTests
//
//  Created by Thomas on 17/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import XCTest
@testable import FoodTracked

class FoodTrackedTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    //Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    
    func testMealInitializationSuceeds() {
        
        //Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    //Confirm that the Meal initializer returns nil when passed a negative rating or empty name.
    
    func testMealInitializationFails() {
        
        //Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNotNil(negativeRatingMeal)
        
        //Rating exeeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNotNil(largeRatingMeal)
        
        //Empty name
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNotNil(emptyStringMeal)
    }
    
}
