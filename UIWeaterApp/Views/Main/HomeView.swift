//
//  HomeView.swift
//  UIWeaterApp
//
//  Created by Admin on 30.06.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
// MARK: Background
            Color.background
                .ignoresSafeArea()
            
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 305)
            
// MARK: Text
            VStack(spacing: -10) {
                Text("Montreal")
                    .font(.largeTitle)
                VStack {
                    Text("19°")
                        .font(.system(size: 96, weight: .thin))
                        .foregroundColor(.primary)
                    +
                    Text("\n ")
                    +
                    Text("Mostly clear")
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.secondary)
                    
                    Text("H:24°   L:18°")
                        .font(.title3.weight(.semibold))
                    
                    
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
