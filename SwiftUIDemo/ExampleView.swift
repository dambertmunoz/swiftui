//
//  ExampleView.swift
//  SwiftUIDemo
//
//  Created by Dambert M. on 24/08/21.
//

import Foundation
import SwiftUI

// An example class to work with
class Player: ObservableObject {
    @Published var name = "Taylor"
    @Published var age = 26
}

// A view that creates and owns the Player object.
struct ExampleView: View {
    @StateObject var player = Player()

    var body: some View {
        Button("Button"){
            self.player.name = "Dambert"
        }
        NavigationView {
            NavigationLink(destination: PlayerNameView(player: player)) {
                Text("Show detail view")
            }
        }
    }
}

// A view that monitors the Player object for changes, but
// doesn't own it.
struct PlayerNameView: View {
    @ObservedObject var player: Player

    var body: some View {
        Text("Hello, \(player.name)!")
    }
}



struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            VStack{
                ExampleView()
            }
        }
    }
}
