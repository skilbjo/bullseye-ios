//
//  ContentView.swift
//  Bullseye
//
//  Created by John Skilbeck on 7/4/20.
//  Copyright © 2020 John Skilbeck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome to my first app")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("button pressed")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) {() ->
                Alert in
                return Alert(title: Text("Hello there"), message: Text("This is a frist popup"), dismissButton: .default(Text("Awesome")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
