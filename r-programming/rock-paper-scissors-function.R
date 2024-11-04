cpu_choices <- c("rock", "paper", "scissors")

rockpaperscissor <- function(userchoice){
  
  if(!userchoice %in% cpu_choices) {
    stop("Invalid choice! Please choose 'rock', 'paper', or 'scissors'.")
  }
  
  cpu_choice <- sample(cpu_choices, 1)
  
  if(userchoice == "rock") {
    if(cpu_choice == "rock") {
      result <- "Draw"
    } else if(cpu_choice == "paper") {
      result <- "CPU wins"
    } else {
      result <- "You win"
    }
  } 
  else if(userchoice == "paper") {
    if(cpu_choice == "paper") {
      result <- "Draw"
    } else if(cpu_choice == "scissors") {
      result <- "CPU wins"
    } else {
      result <- "You win"
    }
  } 
  else if(userchoice == "scissors") {
    if(cpu_choice == "scissors") {
      result <- "Draw"
    } else if(cpu_choice == "rock") {
      result <- "CPU wins"
    } else {
      result <- "You win"
    }
  }
  
  print(paste("You choose", userchoice))
  print(paste("CPU chooses", cpu_choice))
  print(result)
  
  return(result)
}

rockpaperscissor("paper")
