//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Julia Boichentsova on 29/05/2020.
//  Copyright © 2020 Julia Boichentsova. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List (landmarkData) { landmark in
                // specifying LandmarkDetail view as a destination for navigation
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
