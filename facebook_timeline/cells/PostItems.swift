//
//  PostItems.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

struct PostItems: View {
    var img_url = "post_image"
    
    var body: some View {
        VStack{
            //header
        HStack{
            ZStack(alignment: .bottomTrailing){
            Image("myprofile_image")
                .resizable().frame(width: 50,height: 50)
                .cornerRadius(25)
                ZStack{
                Circle().frame(width: 22,height: 22)
                    .foregroundColor(.white)
                    Circle().frame(width: 16,height: 16)
                        .foregroundColor(.green)
                }
            }
            VStack(alignment: .leading,spacing: 5){
            Text("Abduqahhor Saidjonov").fontWeight(.bold)
                .font(.system(size: 17))
                HStack{
                Text("18 m.").font(.system(size: 17))
                    .foregroundColor(.black.opacity(0.6))
                Image(systemName: "globe.asia.australia.fill")
                    .foregroundColor(.black.opacity(0.6))
                }
            }
            Spacer()
            Image(systemName: "ellipsis")
}
            .padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            Image(img_url).resizable()
                .scaledToFit()
            
            HStack(spacing: 5){
                HStack(spacing: -12){
                    Image("ic_like").resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(15)
                Image("ic_heart").resizable()
                    .frame(width: 20, height: 20)
                    .cornerRadius(10)
                }
                Text("30").foregroundColor(.black.opacity(0.7))
                Spacer()
                Text("5 Comments").foregroundColor(.black.opacity(0.7))
                Text("3 Shares").foregroundColor(.black.opacity(0.7))
            }
            .padding(.leading,10).padding(.trailing,10).padding(.top , 5)
           
            HStack{
            }.frame(height: 0.5)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.3))
            
            //like comment share
            HStack(spacing: 5){
                Spacer()
                Image(systemName: "hand.thumbsup")
                Text("Like")
                Spacer()
                Image(systemName: "bubble.left")
                Text("Comment")
                Spacer()
                Image(systemName: "arrowshape.turn.up.forward")
                Text("Share")
                Spacer()
            }
            .frame(height: 40).frame(maxWidth: .infinity)
            .padding(.top,5)
            
            HStack{
            }
            .frame(height: 10)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.3))
        }
    }
}

struct PostItems_Previews: PreviewProvider {
    static var previews: some View {
        PostItems()
    }
}
