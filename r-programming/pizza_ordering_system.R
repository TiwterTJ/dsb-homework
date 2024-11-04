pizza_menu <- c("Margherita", "Pepperoni", "Hawaiian", "Veggie", "BBQ Chicken")
pizza_prices <- c(350, 400, 375, 325, 450)

drink_menu <- c("Coke", "Sprite", "Water", "Iced Tea", "Lemonade")
drink_prices <- c(60, 60, 50, 70, 80)

pizza <- function(){
  print("Menu:")
  print(paste("Pizza: ", paste(pizza_menu, collapse = "  ")))
  print(paste("Drink: ", paste(drink_menu, collapse = "  ")))
  
  user_pizza <- readline("Please enter the pizza you want to order: ")
  user_drink <- readline("Please enter the drink you want to order: ")
  
  pizza_index <- which(pizza_menu == user_pizza)
  drink_index <- which(drink_menu == user_drink)
  bill <- pizza_prices[pizza_index] + drink_prices[drink_index]
  
  print("Bill:")
  print(paste(user_pizza, ": ", pizza_prices[pizza_index], "THB"))
  print(paste(user_drink, ": ", drink_prices[drink_index], "THB"))
  print(paste("Sum: ", bill, "THB"))
}

pizza()
