//
//  Post.swift
//  Foodie
//
//  Created by Giada Pisani on 18/01/23.
//

import SwiftUI

struct Post: Identifiable, Codable {
    var id = UUID()
    var name: String
    var userName: String
    var imageName: String
    var likes: Int
    var description: String
    var views: Int
    var downloads: Int
    var profileImageName: String
    var comments: Int
    var time: Int

    static let samplePost = Post(name: "Alex Nolan",
                                userName: "@RosieDel",
                                imageName: "photo",
                                likes: 120,
                                description: "The pearl in the ocean! The ocean always makes me feel like we are ‘at the end of the world’. A deep feeling of loneliness and wildness at the same time. In this travel, we stayed in Reiseland for 4 nights to explore it. We had a chance to see the giant sea turtles, too! I definitely loved it!",
                               views: 1000,
                               downloads : 20,
                               profileImageName: "NewPostProfile",
                               comments:200,
                               time: 10
                                )
}



let mockedPosts =
    [Post(name: "Alex Nolan",
          userName: "@RosieDel",
          imageName: "photo",
          likes: 120,
          description: "My first recreation! I need to try this recipe again. #yas",
         views: 1000,
         downloads : 20,
         profileImageName: "NewPostProfile",
         comments:200,
         time: 10
         ),
    Post(name: "Maxine Poloc",
       userName: "@MaxinePol",
       imageName: "photo2",
       likes: 300,
       description: "Good recipe, my skills.. not so much. #burnt #stilledible",
      views: 10000,
      downloads : 1000,
      profileImageName: "NewPostProfile2",
      comments: 500,
      time: 30),
    Post(name: "Jennie Dean",
       userName: "@JDean",
       imageName: "photo3",
       likes: 278,
       description: "Vegans are happy. I am a vegan and I am happy. #firsthandexperience",
      views: 90000,
      downloads : 3400,
      profileImageName: "NewPostProfile",
      comments: 999,
      time:40)
    
]

