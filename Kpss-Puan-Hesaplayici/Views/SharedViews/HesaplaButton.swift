// 
//  HesaplaButton.swift
//  Kpss-Puan-Hesaplayici
//
//  Created by Mehmet Ali Er on 15.06.2024.
//

import SwiftUI

struct HesaplaButton: View {
    
    let title : String
    let action : () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Label(title, systemImage: "plus.forwardslash.minus")
                .bold()
                .font(.title3)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
               
        }
        .buttonStyle(.borderedProminent)

    }
}

struct HesaplaButton_Previews: PreviewProvider {
    static var previews: some View {
        HesaplaButton(title: "Hesapla", action: {
            print("Butona basıldı.")
        })
    }
}
