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
            
            ScrollView {
                SearchFilterBar(location: nil, duration: nil, guest: nil)
                    Spacer(minLength: 32)
                LazyVStack(spacing:32) {
                    ForEach(properties) { property in
                        PropertyCell(property: property)
                    }
                }
                .padding(.horizontal)
            }
            
            /*
            VStack(spacing: 100) {
                SearchFilterBar(location: nil, duration: nil, guest: nil)
                List(properties) { property in
                    
                    PropertyCell(property: property)
                }
            }
             */
        }
    }
}

#Preview {
    ContentView()
}
