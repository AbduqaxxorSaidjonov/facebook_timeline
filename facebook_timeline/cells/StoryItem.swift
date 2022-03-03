//
//  StoryItem.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack{
            Image("post2").resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading){
                Image("profile_image").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue,lineWidth: 5))
                Spacer()
                Text("Abduqahhor").fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Text("Saidjonov").fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .padding()
        }
        .frame(width: 150,height: 250)
        .cornerRadius(25)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
