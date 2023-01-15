//
//  DropDownTestView.swift
//  bet_calc2
//
//  Created by Владимир Фролкин on 13.11.2022.
//

import SwiftUI

struct ContentViewq: View {
    var body: some View {
        ZStack {
            Text("Huy")
                .padding(40)
                .background(Color(.green))
            Text("Pizda")
                .padding()
                .background(Color(.red))
        }
    }
}

struct ContentViewq_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewq()
    }
}
