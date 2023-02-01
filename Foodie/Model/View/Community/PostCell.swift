//
//  PostCell.swift
//  Foodie
//
//  Created by Giada Pisani on 18/01/23.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    @State private var isLike = false
 
 
    
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
                          
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                   Spacer()
               
                }.frame(maxWidth: .infinity, alignment: .leading)
                Image(post.imageName)
                    .resizable()
                    .scaledToFit()
             HStack() {
                  
                    Button(action: {
                              self.isLike.toggle()
                          }) {
                              Image(systemName: isLike ? "heart.fill" : "heart")
                          }
                    Text(String("\(post.likes) Likes"))
                        .font(.system(size: 18, weight: .semibold))
                 Spacer()
             }
             
                  
            
                }.frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                VStack (spacing: 10.0) {
                 
                    Text(post.description)
                        .font(.system(size: 16))
                       
                   
                }.frame(maxWidth: .infinity, alignment: .leading)
    }
        
           }
        
    


struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: Post.samplePost)
    }
}
