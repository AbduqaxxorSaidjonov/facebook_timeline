//
//  CreateStory.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

struct CreateStory: View {
    var body: some View {
        VStack(spacing: 0){
            Image("profile_image")
                .resizable()
            ZStack{
                Image("ic_plus").resizable()
                    .frame(width: 35,height: 35)
                    .cornerRadius(17.5)
                    .overlay(RoundedRectangle(cornerRadius: 17.5).stroke(lineWidth: 3).foregroundColor(.white))
                    .offset(y: -40)
            VStack{
                Text("Create a").fontWeight(.bold)
                    .font(.system(size: 20))
                Text("Story")
                    .fontWeight(.bold)
                        .font(.system(size: 20))
            }.padding(.top,15)
            .frame(width: 170,height: 84)
            .background(Color.gray.opacity(0.05))
        }
        }.frame(width: 170,height: 250)
            .cornerRadius(25)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 0.5).foregroundColor(.gray.opacity(0.3)))
    }
}

struct CreateStory_Previews: PreviewProvider {
    static var previews: some View {
        CreateStory()
    }
}
