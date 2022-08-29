//
//  StackingUpButtons.swift
//  GuessTheFlag
//
//  Created by Atheer Othman on 21/10/1443 AH.
//

import SwiftUI


struct ColorsAndGradiant: View {
    @State private var showingAlert = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Color.indigo
                Color.green
            }
            Text("Hello, world!")
                .foregroundColor(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }

        .ignoresSafeArea()
        
        /// Types of gradient
        /// no.1
        LinearGradient(gradient: Gradient(colors: [.white, .indigo]),
                       startPoint: .top,
                       endPoint: .bottom)
        /// no.2
        
        LinearGradient(gradient:
                        Gradient(stops:[
                            Gradient.Stop(color: .white, location: 0.45),
                            Gradient.Stop(color: .indigo, location: 0.55)
                        ]),
                       startPoint: .top,
                       endPoint: .bottom)
        
        /// no.3
        RadialGradient(gradient: Gradient(colors: [.blue, .black]),
                       center: .center,
                       startRadius: 20,
                       endRadius: 200)
        
        /// no.4
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct StackingUpButtons_Previews: PreviewProvider{
    static var previews: some View {
        ColorsAndGradiant()
    }
}
