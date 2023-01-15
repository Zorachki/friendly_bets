//
//  EventAddView.swift
//  bet_calc2
//
//  Created by Владимир Фролкин on 06.09.2022.
//

import SwiftUI

struct EventAddView: View {
    
    @State var betName = ""
    @State var eventOneName = ""
    @State var eventTwoName = ""
    @State var isShowedMainView = false
    @State var isShowedPlayerAddView = false
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    isShowedMainView.toggle()
                } label: {
                    Image("backButton")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height: 25)
                }.padding(.horizontal, 25)
                Spacer()
                ZStack {
                    if betName.isEmpty {
                        Text("Название пари")
                            .foregroundColor(Color.white.opacity(0.4))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .background(.clear)
                            .cornerRadius(12)
                            .padding(.trailing, 70)
                    }
                    TextField("", text: $betName)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .background(.clear)
                        .padding(.trailing, 70)
                }
                Spacer()
            }
            .padding(.bottom, 10)
            VStack {
                TextField("Название события 1", text: $eventOneName)
                    .multilineTextAlignment(.center)
                    .frame(width: 330, height: 50)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .background(Color("EventButtons"))
                    .background(.clear)
                    .cornerRadius(8)
                TextField("Название события 2", text: $eventTwoName)
                    .multilineTextAlignment(.center)
                    .frame(width: 330, height: 50)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .background(Color("EventButtons"))
                    .background(.clear)
                    .cornerRadius(8)
                
                Button {
                    print("Добавить событие")
                } label: {
                    Image("addEventButton")
                        .resizable()
                        .frame(width:330, height: 50)
                        .cornerRadius(8)
                }
                Spacer()
                Button {
                    isShowedPlayerAddView.toggle()
                } label: {
                    Text("Далее")
                        .font(.system(size: 21, weight: .heavy))
                        .foregroundColor(.black)
                        .padding(16)
                        .padding(.horizontal, 62)
                        .background(Color("ExtraButtons"))
                        .cornerRadius(10)
                }.padding(.bottom, 20)
                Image("stageOne")
                    .resizable()
                    .scaledToFit()
                    .frame(width:330, height: 50)
                    .padding(.bottom, 35)
            }
            Spacer()
        }.background(Image("background")
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all))
        .fullScreenCover(isPresented: $isShowedMainView) {
            MainView()
        }
        .fullScreenCover(isPresented: $isShowedPlayerAddView) {
            PlayerAddView()
        }
    }
}

struct EventAddView_Previews: PreviewProvider {
    static var previews: some View {
        EventAddView()
    }
}
