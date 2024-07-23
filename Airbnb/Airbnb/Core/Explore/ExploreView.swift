//
//  ExplooreView.swift
//  Airbnb
//
//  Created by Gaurav Pandey on 23/07/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var properties: [Property] = Property.sampleData()

    var body : some View {
        NavigationStack{
            List(properties) { property in
                PropertyCell(property: property)
            }
            .navigationTitle("Explore")
            .toolbar {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
