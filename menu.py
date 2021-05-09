# 
#
#
# Created by Alistair Horwood (****@alistairs.space)
# Pedal Prix Tracker
#
#
Version = "V0.1"

def div():
    print("------------------------------------------------------------")

def logo():
    print("______        _       _   _____              _             ")
    print("| ___ \      | |     | | |_   _|            | |            ")
    print("| |_/ /__  __| | __ _| |   | |_ __ __ _  ___| | _____ _ __ ")
    print("|  __/ _ \/ _` |/ _` | |   | | '__/ _` |/ __| |/ / _ \ '__|")
    print("| | |  __/ (_| | (_| | |   | | | | (_| | (__|   <  __/ |   ")
    print("\_|  \___|\__,_|\__,_|_|   \_/_|  \__,_|\___|_|\_\___|_|   ")
    div()


def space(num):
    if num == 0:
        num = 1
    i=0
    while i < num:
        print("\n")
        i += 1


#START
def menu():
    space(1)
    logo()
    print("Welcome to Pedal Tracker " + Version +  "\nCreated by Alistair Horwood (****@alistairs.space)")
    space(1)
    print("(1) Setup software (first time use), enter cars to be tracked")
    print("(2) Start tracking display")
    print("(3) Test connection")
    print("(4) Reset software")


    selection = input("Enter Selection: ")
    if selection == '1':
        print("1")
    elif selection == '2':
        print("2")
    elif selection == '3':
        print("3")
    elif selection == '4':
        print("4")
    else:
        print("Invalid Selection")
        menu()
    
menu()
