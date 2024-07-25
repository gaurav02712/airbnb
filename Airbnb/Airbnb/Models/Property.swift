//
//  Property.swift
//  Airbnb
//
//  Created by Gaurav Pandey on 23/07/24.
//

import Foundation

struct Price {
    let unit: String
    let value: Float
    let currency: String
}

struct Property: Identifiable {
    let id = UUID()
    let imageNames: [String]
    let title : String
    let subtitle: String?
    let tertiaryTitle: String?
    let price: Price
    let ratingStar: Int = Int.random(in: 1...5)
    
    static func sampleData()->[Property] {
        let sampleImages = ["property_1_a", "property_1_b", "property_1_c", "property_1_d"]
        let property = Property(imageNames: sampleImages,
                                title: "Morjim, India",
                                subtitle: "1,484 KM away",
                                tertiaryTitle: "Aug 1-6",
                                price: Price(unit: "night",
                                             value: 97380, currency: "INR"))
        let property2 = Property(imageNames: sampleImages.shuffled(),
                                 title: "Raigad, India",
                                 subtitle: "1,184 KM away",
                                 tertiaryTitle: "Aug 10-16",
                                 price: Price(unit: "night", value: 84380, currency: "INR"))
        let property3 = Property(imageNames: sampleImages.shuffled(),
                                title: "Morjim, India",
                                subtitle: "1,484 KM away",
                                tertiaryTitle: "Aug 1-6",
                                price: Price(unit: "night",
                                             value: 97380, currency: "INR"))
        let property4 = Property(imageNames: sampleImages.shuffled(),
                                 title: "Raigad, India",
                                 subtitle: "1,184 KM away",
                                 tertiaryTitle: "Aug 10-16",
                                 price: Price(unit: "night", value: 84380, currency: "INR"))
        return [property, property2, property3, property4, property, property2, property3, property4]
    }
}
