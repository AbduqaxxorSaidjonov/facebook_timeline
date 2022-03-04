//
//  ItParkPostItem.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 5/3/22.
//

import SwiftUI

struct ItParkPostItem: View {
    var body: some View {
        VStack(spacing:0){
            //header
            HStack{
                Image("itPark").resizable()
                    .frame(width: 60,height: 60)
                    .cornerRadius(30)
                VStack(alignment: .leading,spacing: 5){
                    Text("IT-Park").font(.system(size: 20))
                        .fontWeight(.bold)
                    HStack(spacing: 10){
                    Text("1d").foregroundColor(.black.opacity(0.8))
                    Image(systemName: "globe.asia.australia")
                    }
                }.padding(.top,15)
                Spacer()
                Image(systemName: "ellipsis")
            }.frame(height: 90)
            .frame(maxWidth: .infinity)
            .padding(.leading,20).padding(.trailing,20)
            
            //description
            VStack(alignment: .leading,spacing: 40){
                HStack{
                Text("IT sohada frilansermisiz?")
                    Spacer()
                }
                HStack{
                Text("Unda oxirig...")
                    Text("See More").font(.system(size: 18))
                        .foregroundColor(.black.opacity(0.6))
                }
                Spacer()
            }
            .padding(.top,10).padding(.leading,20).padding(.trailing,20)
            .frame(maxWidth: .infinity)
            .frame(height: 150)
            
            //Image
            HStack{
                Image("itPark_image").resizable()
                    .frame(width: UIScreen.width/2,height: UIScreen.width/2)
                Image("itPark_image").resizable()
                    .frame(width: UIScreen.width/2,height: UIScreen.width/2)
            }
            
            //likes
            HStack{
                HStack(spacing:0){
                Image("ic_like").resizable()
                    .frame(width: 30,height: 30)
                    .cornerRadius(15)
                Text("4").foregroundColor(.black.opacity(0.6))
                    .font(.system(size: 20))
                Spacer()
                }
                Spacer()
                HStack{
                    Text("1")
                        .foregroundColor(.black.opacity(0.6))
                        .font(.system(size: 20))
                    Text("Share").foregroundColor(.black.opacity(0.6))
                        .font(.system(size: 20))
                }
            }.frame(height: 50)
            .padding(.leading,10)
            .padding(.trailing,10)
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
            
            HStack{
            }
            .frame(height: 10)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.3))
        }
    }
}

struct ItParkPostItem_Previews: PreviewProvider {
    static var previews: some View {
        ItParkPostItem()
    }
}
