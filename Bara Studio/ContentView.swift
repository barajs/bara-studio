//
//  ContentView.swift
//  Bara Studio
//
//  Created by VGM Builder on 1/17/20.
//  Copyright © 2020 BaraJS. All rights reserved.
//

import SwiftUI

struct Location {
    static let allLocations = [
        "New York",
        "London",
        "Tokyo",
        "Berlin",
        "Paris"
    ]
}

struct ContentView: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var location = ""
    var body: some View {
        NavigationView {
            Form {
               TextField("Firstname",
                          text: $firstname)
                TextField("Lastname",
                          text: $lastname)
                Picker(selection: $location,
                       label: Text("Location")) {
                        ForEach(Location.allLocations, id: \.self) { location in
                            Text(location).tag(location)
                        }
                }
            }.navigationBarTitle(Text("Profile"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
