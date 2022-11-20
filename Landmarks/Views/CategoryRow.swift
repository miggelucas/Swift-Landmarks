//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 18/11/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName : String
    var items : [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators:  false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetails(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                       
                    }
                }
            }
            .frame(height: 185)
            
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static let landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue,
                    items: Array(landmarks.prefix(5)))
    }
}
