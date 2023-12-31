//
//  HomeView.swift
//  Safari Extension
//
//  Created by tsnanh on 23/11/2023.
//

import SwiftUI

struct HomeView: View {
  @ObservedObject var currentTab: SelectedTab
    var body: some View {
        VStack {
            Text("You're all set! 🥳")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Text("The extension is up and running. Sit back and enjoy exploring!")
                .padding(.bottom)
                .multilineTextAlignment(.center)
            Text("Next, you can configure some extension display preferences in the Settings. If you like the project, please consider supporting it. For more details, check out the Tip Jar.")
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            HStack {
                Button("Settings") {
                  currentTab.currentTab = 1
                }
                .padding(.trailing)
                Button("Tip Jar") {
                  currentTab.currentTab = 2
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
  HomeView(currentTab: SelectedTab())
}
