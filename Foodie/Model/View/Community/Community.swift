//
//  Community.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Community: View {
    
    var posts: [Post] = mockedPosts
    var body: some View {
        NavigationStack{
        ScrollView(){
      
                
                ForEach(posts) { post in
                    PostCell(post: post)
                }
                .navigationTitle("Community")
            
                .toolbar(){
                    Button("Add Post") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
            
            
            }.scrollIndicators(.hidden)
                .padding()
            
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                }
        }
       
        
    }
}
    struct Community_Previews: PreviewProvider {
        static var previews: some View {
            Community()
        }
    }

