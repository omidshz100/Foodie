//
//  APIs.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 23/01/23.
//
// get the recipe from Id
import Foundation


@MainActor
class APIsViewModel: ObservableObject {
    
    @Published var ingredients : IngredientsModel?
    @Published var recipies : RecepiesModel?
    @Published var recipieDetail : RecipeByIdModel?
    private let headers = [
        "X-RapidAPI-Key": "e9299c98b3msh4abef93e0de4fdap102c44jsn1ec5aaec87d6",
        "X-RapidAPI-Host": "themealdb.p.rapidapi.com"
    ]
    /// Mark: Reciepies in detail
    struct RecipeByIdModel:Codable{
        // link : https://themealdb.p.rapidapi.com/lookup.php?i=52850
        var meals:[RecipeByIdItemModel]?
    }
    /// Mark: Reciepie data model by ID
    struct RecipeByIdItemModel:Codable{
        var dateModified:String?
        var idMeal:String?
        var strArea:String?
        var strCategory:String?
        var strDrinkAlternate:String?
        var strIngredient1:String?
        var strIngredient2:String?
        var strIngredient3:String?
        var strIngredient4:String?
        var strIngredient5:String?
        var strIngredient6:String?
        var strIngredient7:String?
        var strIngredient8:String?
        var strIngredient9:String?
        var strIngredient10:String?
        var strIngredient11:String?
        var strIngredient12:String?
        var strIngredient13:String?
        var strIngredient14:String?
        var strIngredient15:String?
        var strIngredient16:String?
        var strIngredient17:String?
        var strIngredient18:String?
        var strIngredient19:String?
        var strIngredient20:String?
        var strInstructions:String?
        var strMeal:String?
        // image of recipe
        var strMealThumb:String?
        var strMeasure1:String?
        var strMeasure2:String?
        var strMeasure3:String?
        var strMeasure4:String?
        var strMeasure5:String?
        var strMeasure6:String?
        var strMeasure7:String?
        var strMeasure8:String?
        var strMeasure9:String?
        var strMeasure10:String?
        var strMeasure11:String?
        var strMeasure12:String?
        var strMeasure13:String?
        var strMeasure14:String?
        var strMeasure15:String?
        var strMeasure16:String?
        var strMeasure17:String?
        var strMeasure18:String?
        var strMeasure19:String?
        var strMeasure20:String?
        var strSource:String?
        var strTags:String?
        var strYoutube:String?
    }
    
    //Mark: list of Recipes by containing recipe
    struct RecepiesModel:Codable{
        var meals:[RecepieModel]?
    }
    struct RecepieModel:Codable {
        // name of recipe
        var strMeal:String?
        // image of recipe
        var strMealThumb:String?
        // id recipe
        var idMeal:String?
    }
    
    /// MarK: All Ingredients from API
    struct IngredientsModel:Codable{
        var meals:[IngredientModel]?
    }
    struct IngredientModel:Codable{
        var idIngredient:String?
        var strIngredient:String?
        var strDescription:String?
        //"strType": null
    }
    
    
    /// Mark: we need to change this function to something for SwiftUI but now it's freezed for calling API
    /// params :
    ///
    func gettingAllGredients() async {
        
        do{
            var urlComponents = URLComponents(string: "https://themealdb.p.rapidapi.com")!
            urlComponents.path = "/list.php"
            urlComponents.queryItems = [
            URLQueryItem(name: "i", value: "list")]
            var request = URLRequest(url: urlComponents.url!)
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers
            let (data, _ ) = try await URLSession.shared.data(for: request)
            
            //print(String(data: data, encoding: .utf8))
            
            let jsonDecoder = JSONDecoder()
            //let result = try jsonDecoder.decode(RecipeByIdModel.self, from: data)
            self.ingredients = try jsonDecoder.decode(IngredientsModel.self, from: data)
            }catch{
                    print("-------",error)
                  }
    }
    ///////////
    func getRecipes(for name:String) async{
       
        do{
            var urlComponents = URLComponents(string: "https://themealdb.p.rapidapi.com")!
            urlComponents.path = "/filter.php"
            urlComponents.queryItems = [
            URLQueryItem(name: "i", value: name)]
            var request = URLRequest(url: urlComponents.url!)
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers
            let (data, _ ) = try await URLSession.shared.data(for: request)
            
            //print(String(data: data, encoding: .utf8))
            
            let jsonDecoder = JSONDecoder()
            //let result = try jsonDecoder.decode(RecipeByIdModel.self, from: data)
            self.recipies = try jsonDecoder.decode(RecepiesModel.self, from: data)
            }catch{
                    print("-------",error)
                  }
    }
    
    func getRecipeDetailsI(id:String) async {
        
        do{
            var urlComponents = URLComponents(string: "https://themealdb.p.rapidapi.com")!
            urlComponents.path = "/lookup.php"
            urlComponents.queryItems = [
            URLQueryItem(name: "i", value: id)]
            var request = URLRequest(url: urlComponents.url!)
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers
            let (data, _ ) = try await URLSession.shared.data(for: request)
            
            //print(String(data: data, encoding: .utf8))
            
            let jsonDecoder = JSONDecoder()
            //let result = try jsonDecoder.decode(RecipeByIdModel.self, from: data)
            self.recipieDetail = try jsonDecoder.decode(RecipeByIdModel.self, from: data)
            }catch{
                    print("-------",error)
                  }
        }
}

