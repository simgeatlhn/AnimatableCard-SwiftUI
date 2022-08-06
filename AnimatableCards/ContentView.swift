//
//  ContentView.swift
//  AnimatableCards
//
//  Created by simge on 6.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    
    var body: some View {
        ZStack {
            
            VStack() {
                Text("Stranger Things")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding(.top,show ? 30:20)
                    .padding(.bottom, show ? 20:0)
                
                Text("When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .animation(.spring())
                    .cornerRadius(0)
                    .lineLimit(.none)
                
                Image("photo")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .cornerRadius(10)
                
                Spacer()
                
                Button(action: {
                    self.show.toggle()
                }){
        
                    HStack{
                        Image(systemName:  show ? "slash.circle.fill" : "slash.circle")
                            .foregroundColor(.red)
                            .font(Font.title.weight(.semibold)
                            )
                            .imageScale(.small)
                        
                        Text(show ? "Close" : "Read More")
                            .foregroundColor(.red)
                            .font(.title)
                            .cornerRadius(0)
                    }
                }
                .padding(.bottom, show ? 20:15)
                
            }
            .padding()
            .padding(.top, 15)
            .frame(width: show ? 350:360, height: show ? 520:360)
            .background(.black)
            .cornerRadius(30)
            .animation(.spring())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
