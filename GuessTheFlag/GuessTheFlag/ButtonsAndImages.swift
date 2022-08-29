//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Atheer Othman on 21/10/1443 AH.
//

import SwiftUI


struct ButtonsAndImages: View{
    var body: some View {
        VStack {
            Button("Delete Selection", role: .destructive,action: executeDeletion)
                .buttonStyle(.bordered)
            Button("Button 2") {}
            .buttonStyle(.bordered)
            Button("Button 3") {}
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            Button("Button 4", role: .destructive) {}
            .buttonStyle(.borderedProminent)
            
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            .symbolRenderingMode(.monochrome)
        }
    }
    
    func executeDeletion(){
        print("Deleting")
    }
}

struct ButtonsAndImages_Previews: PreviewProvider{
    static var previews: some View {
        ButtonsAndImages()
    }
}



