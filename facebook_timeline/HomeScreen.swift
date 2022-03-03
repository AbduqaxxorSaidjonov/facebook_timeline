//
//  HomeScreen.swift
//  facebook_timeline
//
//  Created by Abduqaxxor on 3/3/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            ScrollView{
                // live photo room
            VStack{
                HStack{
                    Image("profile_image")
                        .resizable()
                        .frame(width: 60,height: 60)
                        .cornerRadius(30)
                    Text("What's on your mind?")
                        .font(.system(size: 17))
                }
                .frame(height: 90)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.leading , 10)
                .padding(.trailing , 10)
                HStack{
                }
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.3))
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "video.fill")
                            .foregroundColor(.red)
                        Text("Live")
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "photo.on.rectangle.fill")
                            .foregroundColor(.green)
                        Text("Photo")
                    }
                    Spacer()
                    HStack{
                        ZStack{
                        Image(systemName: "video.fill")
                                .foregroundColor(.purple)
                        Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .offset(x: -2, y: 0)
                        }
                        Text("Room")
                    }
                    Spacer()
                }
                .frame(height: 50)
}
                
                // create room
            VStack{
                HStack{}.frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                HStack{
                    ScrollView(.horizontal , showsIndicators: false){
                        HStack(spacing: 20){
                            CreateRoom()
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: true)
                        }
                    }
                }.frame(height: 100)
                    .frame(maxWidth: .infinity)
                .padding(.leading,10)
}
                
                //create story
            VStack{
                HStack{
                }.frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            CreateStory()
                            StoryItem()
                            StoryItem()
                        }
                    }
                .padding(.leading,10)
}
                
                //post items
                VStack{
                    HStack{
                    }.frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    PostItems(img_url: "profile_image")
                    PostItems(img_url: "post_image")
                }
            }
        .navigationBarItems(
            leading: Text("facebook")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .foregroundColor(.blue)
            ,
            trailing:
                HStack{
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36,height: 36)
                        Image(systemName: "magnifyingglass")
                    }
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36,height: 36)
                    Image(systemName: "bolt.horizontal.circle.fill")
                    }
            })
        .navigationBarTitleDisplayMode(.inline)
            //bottom bar
        .toolbar{
            ToolbarItem(placement: .bottomBar){
                HStack{
                HStack{
                Image(systemName: "house")
                    Spacer()
                Image(systemName: "person.2")
                    Spacer()
                Image(systemName: "play.tv")
                }.padding(.trailing)
                HStack{
            Image(systemName: "person.circle")
                Spacer()
            Image(systemName: "bell")
                Spacer()
            Image(systemName: "line.3.horizontal")
                }.padding(.leading)
                }
                .frame(maxWidth: .infinity)
            }
        }
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
