//
//  Screen1.swift
//  SnapshotTestApp
//
//  Created by Bhumit Muchhadia on 2023-01-05.
//

import SwiftUI

@main
struct Screen1: App {
    var body: some Scene {
        WindowGroup {
            TestScreen()
        }
    }
}

struct TestScreen: View {
    var body: some View {
        VStack {
            //try to change font or color and run snapshot
            ForEach(animals, id: \.self) { animal in
                Text(animal.name)
                    .foregroundColor(.red)
                    .font(.largeTitle)
            }
        }
    }
}

let animals = [
    Animal(name: "Cat"),
    Animal(name: "Dog"),
    Animal(name: "Mouse")
]

struct Animal: Hashable {
    var name: String
}
