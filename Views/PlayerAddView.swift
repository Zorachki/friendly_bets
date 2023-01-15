//
//  PlayerAddView.swift
//  bet_calc2
//
//  Created by Владимир Фролкин on 12.11.2022.
//

import SwiftUI

struct PlayerAddView: View {
    
    @State var betName = "Название пари"
    @State var participant = ""
    @State var bet = ""
    @State var eventList: [String] = ["Событие 1", "Событие 2", "Событие 3"]
    @State var isShowedEventAddView = false
    @State private var isExpanded = false
    @State var chosenEvent = "Событие >"
    @State var isShowedInfo = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        isShowedEventAddView.toggle()
                    } label: {
                        Image("backButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width:25, height: 25)
                    }.padding(.horizontal, 25)
                    Spacer()
                    Text(betName)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .background(.clear)
                        .padding(.trailing, 70)
                    Spacer()
                }
                .padding(.bottom, 24)
                VStack {
                    HStack {
                        TextField("Участник 1", text: $participant)
                            .multilineTextAlignment(.center)
                            .frame(width: 120, height: 50)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .background(Color("EventButtons"))
                        //                        .background(.clear)
                            .cornerRadius(8)
                        TextField("Ставка", text: $bet)
                            .multilineTextAlignment(.center)
                            .frame(width: 72, height: 50)
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.white)
                            .background(Color("EventButtons"))
                        //                        .background(.clear)
                            .cornerRadius(8)
                        Menu("\(chosenEvent)") {
                            Button(action: {
                                chosenEvent = eventList[0]
                            }, label: {
                                Text("Событие 1")
                            })
                            Button(action: {
                                chosenEvent = eventList[1]
                            }, label: {
                                Text("Событие 2")
                            })
                            Button(action: {
                                chosenEvent = eventList[2]
                            }, label: {
                                Text("Событие 3")
                            })
                        }
                        .multilineTextAlignment(.center)
                        .frame(width: 122, height: 50)
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white)
                        .background(Color("EventButtons"))
                        .background(.clear)
                        .cornerRadius(8)
                    }
                    Button {
                        print("Добавить участника")
                    } label: {
                        Image("addEventButton")
                            .resizable()
                            .frame(width:330, height: 50)
                            .cornerRadius(8)
                    }
                    Spacer()
                    Button {
                        isShowedInfo.toggle()
                    } label: {
                        Text("Сведения")
                            .font(.system(size: 21, weight: .heavy))
                            .foregroundColor(.white)
                            .padding(14)
                            .padding(.horizontal, 44)
                            .background(Color("EventButtons"))
                            .cornerRadius(10)
                    }.padding(.bottom, 2)
                    Button {
                        print("Далее")
                    } label: {
                        Text("Далее")
                            .font(.system(size: 21, weight: .heavy))
                            .foregroundColor(.black)
                            .padding(14)
                            .padding(.horizontal, 64)
                            .background(Color("ExtraButtons"))
                            .cornerRadius(10)
                    }.padding(.bottom, 20)
                    Image("stageTwo")
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
            .fullScreenCover(isPresented: $isShowedEventAddView) {
                EventAddView()
            }
//            ZStack {
//                Rectangle()
//                    .frame(width:330, height: 650)
//                    .cornerRadius(12)
//                    .foregroundColor(.gray)
//                    .padding()
//            }
        }
    }
}

struct PlayerAddView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerAddView()
    }
}
