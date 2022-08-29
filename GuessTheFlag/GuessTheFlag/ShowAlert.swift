//
//  ShowAlert.swift
//  GuessTheFlag
//
//  Created by Atheer Othman on 21/10/1443 AH.
//

import SwiftUI


struct ShowAlert: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("show alert"){
            showingAlert = true
        }
        .alert("important message !", isPresented: $showingAlert) {
            Button ("Delete", role: .destructive) { }
            Button ("Cancel", role: .cancel) { }
        } message: {
            Text("Please Read this !!")
        }
    }
}

struct ShowAlert_Previews: PreviewProvider{
    static var previews: some View {
        ShowAlert()
    }
}

