//
//  Community.swift
//  Foodie
//
//  Created by Laura Bognanni on 12/01/23.
//

import SwiftUI

struct Community: View {
    @State private var showAddNewPost = false
    var posts: [Post] = mockedPosts
    var body: some View {
        NavigationStack{
        ScrollView(){
      
                
                ForEach(posts) { post in
                    PostCell(post: post)
                }
                .navigationTitle("Community")
                
            
                .toolbar {
                    Button(action:
                                { showAddNewPost.toggle()})
                        {
                           Text("Add Post")
                        }
                    
                }
                
                .sheet(isPresented: $showAddNewPost){
                   NewPost()
                }
            
            
            }.scrollIndicators(.hidden)
                .padding()
            
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                }
        }
       
        /*             .sheet(isPresented: $showAddNewPost){
        NewPost()
     }
*/
    }
}
    struct Community_Previews: PreviewProvider {
        static var previews: some View {
            Community()
        }
    }

