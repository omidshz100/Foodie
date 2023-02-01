//
//  RecipeInformations.swift
//  Foodie
//
//  Created by Giada Pisani on 01/02/23.
//

import Foundation

final class RecipeInfo {
    
    struct RecipeDetails {
        var title:String
        var imageName:String
        var ingredients:String
        var steps:String
    }
    let data:[RecipeDetails] = [
        RecipeDetails(title: "Tortillas", imageName: "pic1", ingredients: "2 cups flour\n½ teaspoon salt\n¾ cup water\n3 tablespoons olive oil", steps: "In a large bowl, combine flour and salt. Stir in water and olive oil to form a soft dough. Let rest 10 minutes.\nDivide the dough into 8-12 pieces and roll each piece into a circle.\nHeat a large skillet or griddle over medium-high heat, and cook tortillas, turning when bubbles start to appear. The whole cooking process should take between 2 and 3 minutes per tortilla.\nWrap tortillas in a towel to keep warm, and serve immediately."),
        
        
        
        RecipeDetails(title: "Churros", imageName: "pic2", ingredients: "1 cup all-purpose flour\n2 tablespoons vegetable oil\n1 cup water\n2 quarts oil for frying\n2 ½ tablespoons white sugar", steps: "Boil water, sugar, salt, and vegetable oil. Remove from the heat, then stir in flour.\nTransfer the dough to a pastry bag and pipe into strips.\nFry the strips in hot oil until they're golden.\nDrain the churros, then roll in cinnamon-sugar."),
        
        
        
        RecipeDetails(title: "Savory Pie Crust", imageName: "pic3", ingredients: "2 cups all purpose flour\n¼ teaspoon salt\n¼ cup olive oil\n1 ½ tablespoons cold water", steps: "In a large bowl or bowl of a food processor whisk together the flour and salt, then add the olive oil, stir with a fork or pulse to combine to form coarse crumbs.\nSlowly add the cold water and continue stirring or pulsing until dough comes together.\nMove the dough to a lightly floured flat surface and knead until smooth. \nWrap the dough in plastic and refrigerate one hour before using."),
        
        
        
        RecipeDetails(title: "Vegan Pasta", imageName: "pic4", ingredients: "1 ¼ cup all-purpose flour\n¾ cup water\n2 tsp olive oil\n½ tsp salt", steps: "Mix both flours, water, and olive oil until it forms a crumbled texture.Use your fingers to create a well, pouring in olive oil and a little bit of water. Begin mixing, swirling the water and oil in a circular motion as you gather flour, adding water slowly as you go until all of the water is absorbed.\nAfter mixing the flour, water, and oil, place the dough on a floured surface and use your hands to knead the dough until it’s ready. Add a little water if it’s dry, and add in more flour if it’s too wet. Kneading should take approximately 8–10 minutes.\nRoll your dough into a ball and wrap it in plastic wrap and let it rest in the refrigerator for 30 minutes.\nReturn the dough to your work surface and divide into two sections to make the amount you're rolling more manageable. Use either a pasta machine or a rolling pin to roll out the dough until it’s a thin, but still firm, sheet. With the other half of your dough, repeat the process.\nDust the dough with flour and loosely roll it. Take a knife and cut the noodles as wide as you prefer in the same direction you just rolled it. Then take each slice and unroll it to reveal the long, thin pasta noodle you just made. Set aside each one in a little pile.\nAdd the salt to a large pot of boiling water; then, add the noodles and stir until they float to the top, which should take approximately 3–4 minutes. Serve with your favorite pasta sauce, protein, and veggies. If you’re not in the mood for fresh pasta, lay the noodles out on the counter instead of boiling. It will take approximately 24 hours to dry at room temperature, and will snap cleanly without bending when it’s fully dry. Store in an airtight container, where it will keep for up to a month."),
    ]
    
    static let shared = RecipeInfo()
    
    private init(){
        
    }
    
     func getRecipes()->[RecipeDetails]{
        return self.data
    }
    
    func getSample()->RecipeDetails{
        return self.data[0]
    }
}
