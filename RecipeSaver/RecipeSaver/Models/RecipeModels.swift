//
//  RecipeModels.swift
//  RecipeSaver
//
//  Created by Ignatio Julian on 09/01/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Crispy Baked Polenta Sticks with Ranch Dip",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "Seasoned polenta sticks are rolled in bread crumbs and baked to crispy perfection for a deliciously dip-friendly snack. This recipe includes instructions for an easy homemade vegan Ranch Dip, but you can also substitute warmed marinara sauce to keep things easy. This recipe makes for a great Thanksgiving appetizer or a tasty midday treat to tide you over until dinner time.",
            ingredients: "2 cups unsweetened, unflavored plant-based milk\n 1 cup dry polenta\n ¼ cup nutritional yeast\n 1 tablespoon flaxseed meal\n 4½ teaspoons white wine vinegar\n 1½ teaspoons lemon juice\n 2 teaspoons garlic powder\n ½ teaspoon sea salt\n ¼ teaspoon freshly ground black pepper\n 1 cup whole wheat bread crumbs\n 1 12-oz. package soft silken tofu (or 1 15-oz. can cannellini beans, rinsed and drained)\n 2 teaspoons onion powder",
            directions: "In a medium saucepan bring milk and 2 cups water to boiling. Gradually whisk in polenta. Reduce heat to low; cook 25 minutes or until thick and creamy, stirring frequently. Add in nutritional yeast, flaxseed meal, 3 teaspoons white wine vinegar, the lemon juice, ½ teaspoon garlic powder, ½ teaspoon sea salt, and ¼ teaspoon black pepper; mix well. Cook and stir 3 minutes more.\n On a baking sheet spread polenta mixture into an 8×6-inch rectangle that is ½ inch thick. Let cool 5 minutes. Cover and chill for at least 1 and up to 12 hours.\n For Ranch Dip, in a blender combine the tofu, onion powder, and the remaining 1½ teaspoons each garlic powder and vinegar. Cover and blend until smooth and creamy. Season with salt and pepper to taste, and pulse to combine. Transfer dip to a bowl and stir in parsley, dill, and chives. Chill 1 hour before serving.",
            category: "Soup",
            datePublished: "2021-06-24",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/crispy-baked-polenta-sticks-ranch-dip/"
        ),
        Recipe(
            name: "Crispy Baked Polenta Sticks with Ranch Dip",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "Seasoned polenta sticks are rolled in bread crumbs and baked to crispy perfection for a deliciously dip-friendly snack. This recipe includes instructions for an easy homemade vegan Ranch Dip, but you can also substitute warmed marinara sauce to keep things easy. This recipe makes for a great Thanksgiving appetizer or a tasty midday treat to tide you over until dinner time.",
            ingredients: "2 cups unsweetened, unflavored plant-based milk\n 1 cup dry polenta\n ¼ cup nutritional yeast\n 1 tablespoon flaxseed meal\n 4½ teaspoons white wine vinegar\n 1½ teaspoons lemon juice\n 2 teaspoons garlic powder\n ½ teaspoon sea salt\n ¼ teaspoon freshly ground black pepper\n 1 cup whole wheat bread crumbs\n 1 12-oz. package soft silken tofu (or 1 15-oz. can cannellini beans, rinsed and drained)\n 2 teaspoons onion powder",
            directions: "In a medium saucepan bring milk and 2 cups water to boiling. Gradually whisk in polenta. Reduce heat to low; cook 25 minutes or until thick and creamy, stirring frequently. Add in nutritional yeast, flaxseed meal, 3 teaspoons white wine vinegar, the lemon juice, ½ teaspoon garlic powder, ½ teaspoon sea salt, and ¼ teaspoon black pepper; mix well. Cook and stir 3 minutes more.\n On a baking sheet spread polenta mixture into an 8×6-inch rectangle that is ½ inch thick. Let cool 5 minutes. Cover and chill for at least 1 and up to 12 hours.\n For Ranch Dip, in a blender combine the tofu, onion powder, and the remaining 1½ teaspoons each garlic powder and vinegar. Cover and blend until smooth and creamy. Season with salt and pepper to taste, and pulse to combine. Transfer dip to a bowl and stir in parsley, dill, and chives. Chill 1 hour before serving.",
            category: "Soup",
            datePublished: "2021-06-24",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/crispy-baked-polenta-sticks-ranch-dip/"
        ),
        Recipe(
            name: "Crispy Baked Polenta Sticks with Ranch Dip",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "Seasoned polenta sticks are rolled in bread crumbs and baked to crispy perfection for a deliciously dip-friendly snack. This recipe includes instructions for an easy homemade vegan Ranch Dip, but you can also substitute warmed marinara sauce to keep things easy. This recipe makes for a great Thanksgiving appetizer or a tasty midday treat to tide you over until dinner time.",
            ingredients: "2 cups unsweetened, unflavored plant-based milk\n 1 cup dry polenta\n ¼ cup nutritional yeast\n 1 tablespoon flaxseed meal\n 4½ teaspoons white wine vinegar\n 1½ teaspoons lemon juice\n 2 teaspoons garlic powder\n ½ teaspoon sea salt\n ¼ teaspoon freshly ground black pepper\n 1 cup whole wheat bread crumbs\n 1 12-oz. package soft silken tofu (or 1 15-oz. can cannellini beans, rinsed and drained)\n 2 teaspoons onion powder",
            directions: "In a medium saucepan bring milk and 2 cups water to boiling. Gradually whisk in polenta. Reduce heat to low; cook 25 minutes or until thick and creamy, stirring frequently. Add in nutritional yeast, flaxseed meal, 3 teaspoons white wine vinegar, the lemon juice, ½ teaspoon garlic powder, ½ teaspoon sea salt, and ¼ teaspoon black pepper; mix well. Cook and stir 3 minutes more.\n On a baking sheet spread polenta mixture into an 8×6-inch rectangle that is ½ inch thick. Let cool 5 minutes. Cover and chill for at least 1 and up to 12 hours.\n For Ranch Dip, in a blender combine the tofu, onion powder, and the remaining 1½ teaspoons each garlic powder and vinegar. Cover and blend until smooth and creamy. Season with salt and pepper to taste, and pulse to combine. Transfer dip to a bowl and stir in parsley, dill, and chives. Chill 1 hour before serving.",
            category: "Soup",
            datePublished: "2021-06-24",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/crispy-baked-polenta-sticks-ranch-dip/"
        ),
        Recipe(
            name: "Crispy Baked Polenta Sticks with Ranch Dip",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "Seasoned polenta sticks are rolled in bread crumbs and baked to crispy perfection for a deliciously dip-friendly snack. This recipe includes instructions for an easy homemade vegan Ranch Dip, but you can also substitute warmed marinara sauce to keep things easy. This recipe makes for a great Thanksgiving appetizer or a tasty midday treat to tide you over until dinner time.",
            ingredients: "2 cups unsweetened, unflavored plant-based milk\n 1 cup dry polenta\n ¼ cup nutritional yeast\n 1 tablespoon flaxseed meal\n 4½ teaspoons white wine vinegar\n 1½ teaspoons lemon juice\n 2 teaspoons garlic powder\n ½ teaspoon sea salt\n ¼ teaspoon freshly ground black pepper\n 1 cup whole wheat bread crumbs\n 1 12-oz. package soft silken tofu (or 1 15-oz. can cannellini beans, rinsed and drained)\n 2 teaspoons onion powder",
            directions: "In a medium saucepan bring milk and 2 cups water to boiling. Gradually whisk in polenta. Reduce heat to low; cook 25 minutes or until thick and creamy, stirring frequently. Add in nutritional yeast, flaxseed meal, 3 teaspoons white wine vinegar, the lemon juice, ½ teaspoon garlic powder, ½ teaspoon sea salt, and ¼ teaspoon black pepper; mix well. Cook and stir 3 minutes more.\n On a baking sheet spread polenta mixture into an 8×6-inch rectangle that is ½ inch thick. Let cool 5 minutes. Cover and chill for at least 1 and up to 12 hours.\n For Ranch Dip, in a blender combine the tofu, onion powder, and the remaining 1½ teaspoons each garlic powder and vinegar. Cover and blend until smooth and creamy. Season with salt and pepper to taste, and pulse to combine. Transfer dip to a bowl and stir in parsley, dill, and chives. Chill 1 hour before serving.",
            category: "Soup",
            datePublished: "2021-06-24",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/crispy-baked-polenta-sticks-ranch-dip/"
        )
    ]
}
