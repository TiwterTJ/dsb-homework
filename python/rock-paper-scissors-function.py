import random

cpu_choices = ["rock", "paper", "scissor"]

def rock_paper_scissors():
    cpu_choice = random.choice(cpu_choices)
    user_choice = input("Enter your choice: ")

    print("You choose:", user_choice)
    print("CPU chooses:", cpu_choice)

    if user_choice == cpu_choice:
        print("It's a tie!")
    elif (user_choice == "rock" and cpu_choice == "scissor") or \
         (user_choice == "paper" and cpu_choice == "rock") or \
         (user_choice == "scissor" and cpu_choice == "paper"):
        print("You win!")
    else:
        print("You lose!")

rock_paper_scissors()
