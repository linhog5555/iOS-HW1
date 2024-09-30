//
//  ContentView.swift
//  UCI World Championship
//
//  Created by 林君翰 on 2024/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Image("uci_logo")
                    .resizable()
                    .scaledToFit()
                ZStack {
                    Rectangle()
                        .fill(Color(red: 0/255, green: 118/255, blue: 203/255))
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                    VStack {
                        Text("MEN ELITE")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 251/255, green: 227/255, blue: 0/255))
                        Text("ROAD RACE")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                     
                VStack {
                    
                    ImportantInfoView()
                    
                    Text("RACE COURSE")
                        .bold()
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                    Image("course")
                        .resizable()
                        .scaledToFit()
                    MapView()
                    
                    Text("CHAMPIONS")
                        .bold()
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                    Image("podium")
                        .resizable()
                        .scaledToFit()
                    
                    ResultView()
                    
                    Text("[Watch Full Race on  YouTube](https://www.youtube.com/live/G7S0PKfFSfY?si=NhXmv6lJHeYECLAM)")
                        .bold()
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                        
                }
                .padding(.horizontal, 10)
            }
            
        }
    }
}

#Preview {
    ContentView()
}






