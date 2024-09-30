//
//  ImportantInfoView.swift
//  UCI World Championship
//
//  Created by 林君翰 on 2024/10/1.
//


import SwiftUI

struct ImportantInfoView: View {
    var body: some View {
        
        Text("IMPORTANT INFORMATION")
            .bold()
            .font(.title2)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 10)
                
        ScrollView(.horizontal) {
            HStack {
                InfoBlock(title: "DATE", detail: "Sunday, 29 September 2024", icon: "calendar")
                InfoBlock(title: "TIME", detail: "10:30 - 17:30", icon: "clock")
                InfoBlock(title: "DISTANCE", detail: "273.9 km (+4.5 km)", icon:"point.bottomleft.forward.to.arrow.triangle.scurvepath.fill")
                InfoBlock(title: "ELEVATION GAIN", detail: "4'470 m", icon: "arrow.up.forward")
                InfoBlock(title: "STARTING PLACE", detail: "Winterthur", icon: "flag")
                InfoBlock(title: "FINISHING PLACE", detail: "Zurich, Sechseläutenplatz", icon: "flag.pattern.checkered")
            }
        }
        
    }
}

struct InfoBlock: View {
    let title: String
    let detail: String
    let icon: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            ZStack {
                Rectangle()
                    .fill(Color(red: 250/255, green: 225/255, blue: 0/255))
                    .frame(height: 60)
                    .cornerRadius(15)
                                
                HStack {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text(detail)
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 10)
            }
        }
        // GeometryReader 用來捕捉 VStack 的寬度
        .background(GeometryReader { geo in
            Color.clear.onAppear {
                _ = geo.size.width // 這裡可以獲得 VStack 的寬度
            }
        })
        .fixedSize(horizontal: true, vertical: false) // 保持寬度自適應內容
        .padding(.trailing, 10)
    }
}
