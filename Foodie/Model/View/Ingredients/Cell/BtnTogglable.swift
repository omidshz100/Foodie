//
//  BtnTogglable.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 18/01/23.
//

import SwiftUI

struct BtnTogglable: View {
    @State  var isSelected:Bool = false
    var actionOnTap:(Bool, String)->Void = { isTapped, btnTitle in
        
    }
    var btnTitle:String = "Default name"
    
    var body: some View {
        Text(self.btnTitle)
            .padding()
            .onTapGesture {
                self.isSelected.toggle()
                self.actionOnTap(self.isSelected, self.btnTitle)
            }
            .foregroundColor(self.isSelected ? .white:.black)
            .background(self.isSelected ? .black:Color("buttonColor"))
            .cornerRadius(20)
    }
}

struct BtnTogglable_Previews: PreviewProvider {
    static var previews: some View {
        BtnTogglable()
    }
}
