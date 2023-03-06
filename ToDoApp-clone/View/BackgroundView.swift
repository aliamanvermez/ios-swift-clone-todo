//
//  BackgroundView.swift
//  ToDoApp-clone
//
//  Created by Mert Urhan on 3.03.2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        Image("backgroundPNG")
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.4, alignment: .center)
        
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
