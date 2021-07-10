//
//  ContentView.swift
//  Button Style
//
//  Created by Adityaa Mehra on 10/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //MARK: Basic Button
            Button("Text Button without modifiers") {
                print("Text Button")
            }
            //MARK: Button with Button Styles
            Button("Text Button") {
                print("Text Button")
            }.buttonStyle(DefaultButtonStyle())
            //MARK: Basic button with styling modifiers
            Button("Text Button with modifiers") {
                print("Text Button")
            }.padding(.horizontal,50).padding(.vertical ,10).background(Color.blue).foregroundColor(.white).clipShape(Capsule())
            //MARK: Label button
            Button(action: {
                print("Label Button")
            }, label: {
                ZStack{
                    Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)).frame(height: 40)
                    Text("Label Button").foregroundColor(.white)
                }.shadow(radius: 5)
            })
            //MARK: Button with custom style
            Button("Custom Styled Button") {
                print("custom")
            }.buttonStyle(CustomButtonStyle())
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
