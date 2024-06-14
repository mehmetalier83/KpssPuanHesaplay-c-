//
//  MainView.swift
//  Kpss-Puan-Hesaplayici
//
//  Created by Mehmet Ali Er on 14.06.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        HStack {
                            Image(systemName: "1.circle")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                            Text("Ortaöğretim")
                                .badge(
                                    Text("P94")
                                        .italic()
                                )
                        }
                        HStack {
                            Image(systemName: "2.circle")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                            Text("Önlisans")
                                .badge(
                                    Text("P93")
                                        .italic()
                                )
                        }
                        HStack {
                            Image(systemName: "3.circle")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                            Text("Lisans(B Grubu)")
                                .badge(
                                    Text("P3")
                                        .italic()
                                )
                        }
                        HStack {
                            Image(systemName: "4.circle")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                            Text("Eğitim Bilimleri")
                                .badge(
                                    Text("P10")
                                        .italic()
                                )
                        }
                        HStack {
                            Image(systemName: "5.circle")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                            Text("ÖABT")
                                .badge(
                                    Text("P121")
                                        .italic()
                                )
                        }
                    } header: {
                        Text("BÖLÜM SEÇİNİZ")
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .navigationTitle("Kpss Puan Hesaplama")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
