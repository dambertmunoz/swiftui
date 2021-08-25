//
//  BindingView.swift
//  SwiftUIDemo
//
//  Created by Dambert M. on 24/08/21.
//

import SwiftUI

struct BindingView: View {
    @State private var firstToggle = false
    @State private var secondToggle = false

    var body: some View {
        let firstBinding = Binding(
            get: { self.firstToggle },
            set: {
                self.firstToggle = $0

                if $0 == true {
                    self.secondToggle = false
                }
            }
        )

        let secondBinding = Binding(
            get: { self.secondToggle },
            set: {
                self.secondToggle = $0

                if $0 == true {
                    self.firstToggle = false
                }
            }
        )

        return VStack {
            Toggle(isOn: firstBinding) {
                Text("First toggle")
            }

            Toggle(isOn: secondBinding) {
                Text("Second toggle")
            }
        }
    }
}
struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
