//
//  PublishedView.swift
//  SwiftUIDemo
//
//  Created by Dambert M. on 24/08/21.
//

import SwiftUI


class UserProgress: ObservableObject {
    @Published var score = 0
}

struct InnerView: View {
    @ObservedObject var progress: UserProgress

    var body: some View {
        Button("Increase Score") {
            progress.score += 1
        }
    }
}

struct PublishedView: View {
    @StateObject var progress = UserProgress()

    var body: some View {
        VStack {
            Text("Your score is \(progress.score)")
            InnerView(progress: progress)
        }
    }
}

struct PublishedView_Previews: PreviewProvider {
    static var previews: some View {
        PublishedView()
    }
}
