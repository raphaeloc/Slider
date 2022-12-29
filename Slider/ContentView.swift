//
//  ContentView.swift
//  Slider
//
//  Created by Raphael Oliveira Chagas on 28/12/22.
//

import SwiftUI

struct ContentView: View {
    
    let allPaddingSpace = CGFloat(80)
    let maxDecimalColor = CGFloat(255)
    let minDecimalColor = CGFloat(0)
    
    @State var value = Double(0)
    
    var body: some View {
            GeometryReader { geometry in
                    ZStack(alignment: .top) {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 40)
                            .cornerRadius(20)
                        
                        Image(systemName: "power")
                            .renderingMode(.template)
                            .resizable().frame(width: 30, height: 30)
                            .foregroundColor(Color(red: maxDecimalColor - value, green: minDecimalColor + value))
                            .frame(width: 80, height: 80)
                            .background(Color.white)
                            .cornerRadius(80 / 2)
                            .shadow(radius: 10)
                            .position(x: geometry.size.width / 2, y: (geometry.size.height - allPaddingSpace) * CGFloat(self.value / maxDecimalColor))
                            .gesture(DragGesture(minimumDistance: 0)
                                        .onChanged({ value in
                                self.value = Double(min(max(0, Float(value.location.y / (geometry.size.height - allPaddingSpace) * 255)), 255))
                            }))
                    }
                    .padding(.vertical, 40)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
        .padding()
        .background(Color(red: maxDecimalColor - value, green: minDecimalColor + value))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
