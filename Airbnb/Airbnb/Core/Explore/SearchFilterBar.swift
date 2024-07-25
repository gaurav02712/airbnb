//
//  SearchFilterBar.swift
//  Airbnb
//
//  Created by Gaurav Pandey on 24/07/24.
//

import SwiftUI

struct SearchFilterBar: View {
    
    private let location: String?
    private let duration: String?
    private let guest: String?
    
    init(location: String?, duration: String?, guest: String?) {
        self.location = location
        self.duration = duration
        self.guest = guest
    }
    
    var body: some View {
        
        HStack(content: {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment:.leading, spacing: 2) {
                Text(location ?? "Where to ?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                HStack{
                    Text(duration ?? "Anywhere - Any week")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Text(guest ?? "Add guests")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        })
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 1)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchFilterBar(location: nil, duration: nil, guest: nil)
}
