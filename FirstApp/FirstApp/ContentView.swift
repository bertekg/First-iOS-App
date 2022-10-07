//
//  ContentView.swift
//  FirstApp
//
//  Created by Bartlomiej Grywalski on 13/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingPopever = false
    var body: some View {
        VStack {
            Text("Hello, iOS!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Text("Created by")
                .font(.title2)
            Text("Bartłomiej Grywalski")
                .font(.title2)
            Button("Press me!") {
                self.isShowingPopever = true;
            }
            .popover(isPresented: $isShowingPopever) {
                VStack{
                    Text("CONGRATULATION")
                        .font(.title)
                        .padding()
                    Text("You pressed button!")
                        .padding()
                    
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
