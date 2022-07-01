//
//  ContentView.swift
//  Animating Buttons in Swift Ui
//
//  Created by Richard Nkanga on 01/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimated = false
    
    var body: some View {
       
        ZStack {
            Color(red: 0.06, green: 0.53, blue: 0.42).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Spacer()
                    Button("Slide Up") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(.white)
                    .offset(y: isAnimated ? -1000: 0)
                    .animation(.easeIn(duration: 3.0))
                    
                    Button("Slide RIght") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(.white)
                    .offset(x: isAnimated ? 1000: 0)
                    .animation(.easeIn(duration: 3.0))
                    
                    Button("Slide left") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(.white)
                    .offset(x: isAnimated ? -1000: 0)
                    .animation(.easeIn(duration: 3.0))
                    
                    Button("Slide Down") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(.white)
                    .offset(y: isAnimated ? 1000: 0)
                    .animation(.easeIn(duration: 3.0))
                    
                    Button("Rotate") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.black)
                    .background(.white)
                    .rotationEffect(isAnimated ? .degrees(360) : .degrees(0))
                    .animation(.easeIn(duration: 3.0))
                    
                
                    Spacer()
                }
                
                Button(isAnimated ? "Reset" : "Activate Animation ") {
                    self.isAnimated.toggle()
                }
                .padding()
                .frame(width: 180, height: 60)
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(10)
              
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
