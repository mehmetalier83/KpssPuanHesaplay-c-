// 
//  LisansView.swift
//  Kpss-Puan-Hesaplayici
//
//  Created by Mehmet Ali Er on 14.06.2024.
//

import SwiftUI

struct LisansView: View {
    @State private var gKDogruSayisi: Double = 30
    @State private var gkYanlisSayisi: Double = 0
    @State private var gyDogruSayisi: Double = 30
    @State private var gyYanlisSayisi: Double = 0
    @State private var sonuc2022: Double = 0
    @State private var sonuc2023: Double = 0

    var body: some View {
        VStack {
            Form {
                Section {
                    Stepper("Doğru Sayısı: \(gKDogruSayisi, specifier: "%0.f")", value: $gKDogruSayisi, in: 0...60) { _ in
                        impactFeedback()
                    }
                    .bold()

                    Stepper("Yanlış Sayısı: \(gkYanlisSayisi, specifier: "%0.f")", value: $gkYanlisSayisi, in: 0...60) { _ in
                        impactFeedback()
                    }
                    .bold()
                } header: {
                    Text("Genel Kültür")
                        .textCase(.none)
                } footer: {
                    if gKDogruSayisi + gkYanlisSayisi > 60 {
                        Text("Toplam doğru ve yanlış sayıları 60'ı geçemez.")
                            .foregroundStyle(.red)
                    }
                }
                Section {
                    Stepper("Doğru Sayısı: \(gyDogruSayisi, specifier: "%0.f")", value: $gyDogruSayisi, in: 0...60) { _ in
                        impactFeedback()
                    }
                    .bold()
                    Stepper("Yanlış Sayısı: \(gyYanlisSayisi, specifier: "%0.f")", value: $gyYanlisSayisi, in: 0...60) { _ in
                        impactFeedback()
                    }
                    .bold()
                } header: {
                    Text("Genel Yetenek")
                        .textCase(.none)
                } footer: {
                    if gyDogruSayisi + gyYanlisSayisi > 60 {
                        Text("Toplam doğru ve yanlış sayıları 60'ı geçemez.")
                            .foregroundStyle(.red)
                    }
                }
                Section {
                    Text("2023 Kpss Puanı:\(sonuc2023, specifier: "%.3f")")
                    Text("2022 Kpss Puanı:\(sonuc2022, specifier: "%.3f")")
                        .bold()
                    HesaplaButton(title: "Hesapla") {
                        let gkNet = gKDogruSayisi - (gkYanlisSayisi / 4)
                        let gYNet = gyDogruSayisi - (gyYanlisSayisi / 4)
                        withAnimation {
                            sonuc2023 = 51.209 + gYNet * 0.537 + gkNet * 0.418
                            sonuc2022 = 48.616 + gYNet * 0.4756 + gkNet * 0.4192
                        }
                    }

                    .disabled(formKontrol)
                } header: {
                    Text("Sonuç")
                        .textCase(.none)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .navigationTitle("Lisans (B Grubu)")
    }

    var formKontrol: Bool {
        if gyDogruSayisi + gyYanlisSayisi > 60 || gKDogruSayisi + gkYanlisSayisi > 60 {
            return true
        }
        return false
    }

    func impactFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

struct LisansView_Previews: PreviewProvider {
    static var previews: some View {
        LisansView()
    }
}
