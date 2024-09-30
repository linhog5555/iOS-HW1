//
//  MapView.swift
//  UCI World Championship
//
//  Created by 林君翰 on 2024/10/1.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let start = CLLocationCoordinate2D(latitude: 47.498170, longitude: 8.719771)
    static let finish = CLLocationCoordinate2D(latitude: 47.365895, longitude: 8.546217)
}
//47.498170, 8.719771
//47.365895, 8.546217

struct MapView: View {
    var body: some View {
        Map {
            Annotation("start", coordinate: .start) {
                Image(systemName: "flag")
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color(red: 251/255, green: 227/255, blue: 0/255))
                    }
            }
            Annotation("finish", coordinate: .finish) {
                Image(systemName: "flag.pattern.checkered")
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color(red: 251/255, green: 227/255, blue: 0/255))
                    }
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
    }
}


