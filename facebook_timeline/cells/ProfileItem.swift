//
//  ProfileItem.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 4/3/22.
//

import SwiftUI

extension UIScreen{
    static let width = UIScreen.main.bounds.size.width
}

struct ProfileItem: View {
    
    var body: some View {
        VStack{
        //header
        HStack{
            Image("post_image2").resizable()
                .frame(width:60,height: 60)
                .cornerRadius(30)
            VStack(alignment: .leading,spacing: 5){
            HStack{
                Text("Omadbek Kosimov").fontWeight(.bold)
                Text("updated his profile")
                    .lineLimit(2)
            }
            Text("picture")
                HStack(spacing: 15){
                Text("1d")
                Image(systemName: "globe.asia.australia")
                }
            }.padding(.top,20)
            Image(systemName: "ellipsis")
        }
        .frame(height: 100).frame(maxWidth: .infinity)
        .padding(.leading,10).padding(.trailing,10).padding(.top,10)
        
        //Image
            ZStack{
                Circle().frame(width: UIScreen.width/1.25,height: UIScreen.width/1.25)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: UIScreen.width/1.2).stroke(lineWidth: 2)
                                .foregroundColor(.gray.opacity(0.3)))
            Image("post_image2").resizable()
                .frame(width: UIScreen.width/1.3,height: UIScreen.width/1.3)
                .cornerRadius(UIScreen.width/2.4)
            }
            .padding(.top,20)
            
            //likes
            HStack(spacing: 0){
                Image("ic_like").resizable()
                    .frame(width: 30,height: 30)
                    .cornerRadius(15)
                Text("9").foregroundColor(.black.opacity(0.6))
                    .font(.system(size: 20))
                Spacer()
            }
            .padding(.leading,10)
            .padding(.top,10)
            
            //line
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
        }
    }
}

struct ProfileItem_Previews: PreviewProvider {
    static var previews: some View {
        ProfileItem()
    }
}
