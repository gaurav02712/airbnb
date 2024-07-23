//
//  ListingCell.swift
//  Airbnb
//
//  Created by Gaurav Pandey on 23/07/24.
//

import SwiftUI

struct PropertyCell: View {
    let property: Property
    
    var body: some View {
        VStack (spacing:8){
            //Image
            TabView {
                ForEach(property.imageNames, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                }
            }
            .tabViewStyle(.page)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            // Details
            HStack (alignment:.top) {
                VStack (alignment: .leading, content: {
                    Text(property.title).fontWeight(.semibold)
                    Text(property.subtitle ?? "N/a").foregroundStyle(.gray)
                    Text(property.tertiaryTitle ?? "N/a").foregroundStyle(.gray)
                    HStack {
                        Text(property.price.value.formatted()).fontWeight(.semibold)
                        Text(property.price.unit)
                    }
                })
                Spacer()
                
                // Rating
                HStack (spacing: 2) {
                    Image(systemName: "star.fill").foregroundStyle(.yellow, .red)
                    Text("\(property.ratingStar)")
                }
            }
        }
    }
}

#Preview {
    return PropertyCell(property: Property.sampleData().first!)
}
