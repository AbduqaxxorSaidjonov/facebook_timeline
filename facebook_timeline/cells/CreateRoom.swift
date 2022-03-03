//
//  CreateRoom.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

struct CreateRoom: View {
    var body: some View {
        HStack{
        ZStack{
        Image(systemName: "video.fill")
                .resizable()
                .frame(width: 40,height: 20)
                .foregroundColor(.purple)
        Image(systemName: "plus")
                .foregroundColor(.white)
                .font(.system(size: 15))
                .offset(x: -6, y: 0)
        }
            VStack{
                Text("Create").foregroundColor(.blue)
                    .font(.system(size: 20))
                Text("Room").foregroundColor(.blue)
                    .font(.system(size: 20))
            }
            .padding(.leading,5)
        }.frame(width: 170, height: 60)
            .background(Color.white)
            .cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(lineWidth: 2).foregroundColor(.blue.opacity(0.2)))
    }
}

struct CreateRoom_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoom()
    }
}
