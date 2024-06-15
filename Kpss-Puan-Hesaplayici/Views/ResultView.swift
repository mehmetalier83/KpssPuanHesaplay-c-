//
//  ResultView.swift
//  Kpss-Puan-Hesaplayici
//
//  Created by Mehmet Ali Er on 14.06.2024.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(0 ..< 50) { item in
                    Text("Sonuçlar \(item)")
                }
            }
            .navigationTitle("Sonuçlar")

        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
