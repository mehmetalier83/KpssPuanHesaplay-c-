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
                        NavigationLink(destination: OrtaogretimView()) {
                            HStack {
                                Image(systemName: "1.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color("mainColor"))
                                Text("Ortaöğretim")
                                    .badge(
                                        Text("P94")
                                            .italic()
                                            .foregroundColor(Color("mainColor"))
                                    )
                            }
                        }
                        NavigationLink(destination: OnlisansView()) {
                            Image(systemName: "2.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color("mainColor"))

                            Text("Önlisans")
                                .badge(
                                    Text("P93")
                                        .italic()
                                        .foregroundColor(Color("mainColor"))
                                )
                        }
                        NavigationLink(destination: LisansView()) {
                            Image(systemName: "3.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color("mainColor"))

                            Text("Lisans(B Grubu)")
                                .badge(
                                    Text("P3")
                                        .italic()
                                        .foregroundColor(Color("mainColor"))
                                )
                        }
                        NavigationLink(destination: EgitimBilimleriView()) {
                            Image(systemName: "4.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color("mainColor"))

                            Text("Eğitim Bilimleri")
                                .badge(
                                    Text("P10")
                                        .italic()
                                        .foregroundColor(Color("mainColor"))
                                )
                        }
                        NavigationLink(destination: OABTView()) {
                            Image(systemName: "5.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color("mainColor"))

                            Text("ÖABT")
                                .badge(
                                    Text("P121")
                                        .foregroundColor(Color("mainColor"))
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
