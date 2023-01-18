//
//  PostCell.swift
//  Foodie
//
//  Created by Giada Pisani on 18/01/23.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    var body: some View {
        VStack(spacing: 15.0) {
                HStack {
                    Image(post.profileImageName)
                    VStack {
                        Text(post.name)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(post.userName)
                            .font(.system(size: 16, weight: .regular))
                           // .foregroundColor(Color("LightGrayColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                   Spacer()
               
                }.frame(maxWidth: .infinity, alignment: .leading)
                Image(post.imageName)
                    .resizable()
                    .scaledToFit()
                HStack(spacing: 22.0) {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 23, height: 20)
                    Text(String("\(post.likes) Likes"))
                        .font(.system(size: 18, weight: .semibold))
            
                }.frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                VStack (spacing: 10.0) {
                    HStack {
                      //  Text(post.userName)
                       //     .font(.system(size: 14))
                        Spacer()
                     //   CustomButton()
                       // Text(String("\(post.likes) Likes"))
                           // .font(.system(size: 14))
                          // .foregroundColor(Color("DarkGrayColor"))
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    Text(post.description)
                        .font(.system(size: 16))
                       // .foregroundColor(Color("LightGrayColor"))
                    HStack {
                       // Image("ic_downLight")
                          //  Text(String("See \(post.comments) comments"))
                          //  .font(.system(size: 12))
                                //.foregroundColor(Color("LightGrayColor"))
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }.frame(maxWidth: .infinity, alignment: .leading)
              }.padding()
           }
        }
    


struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: Post.samplePost)
    }
}
