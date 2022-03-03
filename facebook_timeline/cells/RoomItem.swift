//
//  RoomItem.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

struct RoomItem: View {
    
    var isOnline = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image("myprofile_image").resizable()
                .frame(width: 60,height: 60)
                .cornerRadius(30)
            if isOnline{
                ZStack{
                    Circle().frame(width: 24,height: 24).foregroundColor(.white)
                    Circle().frame(width: 18,height: 18)
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
