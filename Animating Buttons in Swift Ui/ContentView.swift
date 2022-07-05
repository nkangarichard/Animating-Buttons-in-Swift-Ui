//
//  ContentView.swift
//  Animating Buttons in Swift Ui
//
//  Created by Richard Nkanga on 01/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimated = false
    
    init() {
        let navTitleAppearance = UINavigationBarAppearance()
        navTitleAppearance.configureWithOpaqueBackground()
        // navTitleAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemBackground]
        navTitleAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navTitleAppearance.backgroundColor = UIColor.clear
        navTitleAppearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = navTitleAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navTitleAppearance
        UINavigationBar.appearance().compactAppearance = navTitleAppearance
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
       
        NavigationView {
            ZStack {
                Color(red: 0.06, green: 0.53, blue: 0.42).edgesIgnoringSafeArea(.all)
                VStack {
                    VStack {
                        Spacer()
                        Button("Slide Up") {
                            
                            
                            print("Slide up");
                            
                        }
                        .padding()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .background(.white)
                        .offset(y: isAnimated ? -1000: 0)
                        .animation(.easeIn(duration: 3.0), value: isAnimated)
                        
                        Button("Slide RIght") {
                            
                            print("Slide Right");
                            
                        }
                        .padding()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .background(.white)
                        .offset(x: isAnimated ? 1000: 0)
                        .animation(.easeIn(duration: 3.0), value: isAnimated)
                        
                        Button("Slide left") {
                            
                            print("Slide left");
                            
                        }
                        .padding()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .background(.white)
                        .offset(x: isAnimated ? -1000: 0)
                        .animation(.easeIn(duration: 3.0), value: isAnimated)
                        
                        Button("Slide Down") {
                            
                            print("Slide Down");
                            
                        }
                        .padding()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .background(.white)
                        .offset(y: isAnimated ? 1000: 0)
                        .animation(.easeIn(duration: 3.0), value: isAnimated)
                        
                        Button("Rotate") {
                            
                            print("Rotate");
                            
                        }
                        .padding()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .background(.white)
                        .rotationEffect(isAnimated ? .degrees(360) : .degrees(0))
                        .animation(.easeIn(duration: 3.0), value: isAnimated)
                        
                        
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
                    .padding()
                    
                }
                /*            .onAppear{
                 self.isAnimated.toggle()
                 
                 }
                 */            }
            .navigationTitle("Animations")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
