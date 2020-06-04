//
//  ContentView.swift
//  Landmarks
//
//  Created by Julia Boichentsova on 20/05/2020.
//  Copyright © 2020 Julia Boichentsova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
