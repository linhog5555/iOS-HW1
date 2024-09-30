//
//  ResultView.swift
//  UCI World Championship
//
//  Created by 林君翰 on 2024/9/30.
//


import SwiftUI

struct RaceResult: Identifiable {
    let id = UUID()
    let rank: String
    let bib: String
    let nation: String
    let name: String
    let time: String
    let gap: String
    let speed: String
}

struct ResultView: View {
    
    let raceResults = [
        RaceResult(rank: "1", bib: "22", nation: "SLO", name: "POGAČAR Tadej", time: "6:27:30", gap: "", speed: "42.410 km/h"),
        RaceResult(rank: "2", bib: "69", nation: "AUS", name: "O'CONNOR Ben", time: "6:28:04", gap: "+34", speed: "42.348 km/h"),
        RaceResult(rank: "3", bib: "1", nation: "NED", name: "van der POEL Mathieu", time: "6:28:28", gap: "+58", speed: "42.305 km/h")
    ]
            
    var body: some View {
        Text("RESULTS")
            .font(.title3)
            .bold()
            .padding(.top, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        ScrollView(.horizontal) {
            VStack(alignment: .leading, spacing: 0) {
                // 定義每一行的布局和寬度
                let columns = [
                    GridItem(.fixed(50)),
                    GridItem(.fixed(50)),
                    GridItem(.fixed(100)),
                    GridItem(.fixed(200), alignment: .leading),
                    GridItem(.fixed(80), alignment: .trailing),
                    GridItem(.fixed(50), alignment: .trailing),
                    GridItem(.fixed(100), alignment: .trailing)
                ]
                
                // 項目
                LazyVGrid(columns: columns, spacing: 10) {
                    Group {
                        Text("RANK")
                        Text("BIB")
                        Text("NATION")
                        Text("NAME")
                        Text("TIME")
                        Text("GAP")
                        Text("SPEED")
                    }
                    .font(.headline)
                    .padding(.vertical, 5)
                }
                .background(Color(red: 205/255, green: 205/255, blue: 205/255))
                
                
                // 列表
                ForEach(Array(raceResults.enumerated()), id: \.element.id) { index, result in
                    HStack(spacing: 10) {
                        // Column 1: RANK
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(red: 235/255, green: 0/255, blue: 0/255))
                                .frame(width: 40, height: 25)
                                .cornerRadius(5)
                            Text(result.rank)
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        .frame(width: 50)
                        
                        // Column 2: BIB
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(red: 180/255, green: 180/255, blue: 180/255))
                                .frame(width: 40, height: 25)
                                .cornerRadius(5)
                            Text(result.bib)
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                        .frame(width: 50)
                        
                        // Column 3: NATION
                        HStack {
                            Image(result.nation)
                                .resizable()
                                .frame(width: 40, height: 25)
                                .mask(             //裁切圖片
                                    Rectangle()
                                        .frame(width: 30, height: 25)
                                        .cornerRadius(5)
                                )
                            Text(result.nation)
                        }
                        .frame(width: 100, alignment: .leading)
                        
                        // Column 4: NAME
                        Text(result.name)
                            .frame(width: 200, alignment: .leading)
                        
                        // Column 5: TIME
                        Text(result.time)
                            .frame(width: 80, alignment: .trailing)
                        
                        // Column 6: GAP
                        Text(result.gap)
                            .frame(width: 50, alignment: .trailing)
                        
                        // Column 7: SPEED
                        Text(result.speed)
                            .frame(width: 100, alignment: .trailing)
                    }
                    .padding(.vertical, 5)
                    .background(index % 2 == 0 ? Color(red: 244/255, green: 244/255, blue: 244/255) : Color.clear)
                }
                
            }
            .padding(.vertical, 10)
        }
    }
}

