//
//  ContentView.swift
//  bet_calc2
//
//  Created by Владимир Фролкин on 29.08.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var isShowedEventAddView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    print("Выберите язык")
                } label: {
                    Text("RU")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color("MainButtons"))
                        .cornerRadius(10)
            }.padding(.horizontal, 15)
            }
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width:250.0, height: 250.0)
                .padding(.top, 15)
            Spacer()
            Button {
                isShowedEventAddView.toggle()
            } label: {
                Text("Новое пари")
                    .font(.system(size: 21, weight: .heavy))
                    .foregroundColor(.white)
                    .padding(16)
                    .padding(.horizontal, 52)
                    .background(Color("MainButtons"))
                    .cornerRadius(10)
            }.padding(.bottom, 10)
            Button {
                print("Просмотр списка пари")
            } label: {
                Text("Список пари")
                    .font(.system(size: 21, weight: .heavy))
                    .foregroundColor(.white)
                    .padding(16)
                    .padding(.horizontal, 46)
                    .background(Color("MainButtons"))
                    .cornerRadius(10)
            }
            Spacer()
            Spacer()
        }.background(Image("background")
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all))
        .fullScreenCover(isPresented: $isShowedEventAddView) {
            EventAddView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
                .previewDevice("iPhone 13 Pro")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
