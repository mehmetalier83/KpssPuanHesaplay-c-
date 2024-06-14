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
                Text("Sonuçlar")
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
