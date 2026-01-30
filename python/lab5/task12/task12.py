note_title = input("Enter note title: ")

filename = note_title + ".txt"

try:
    with open(filename, "x") as file:
        file.write("New note created\n")
    print(f"Note '{filename}' created successfully!")
except FileExistsError:
    print(f"Warning: Note '{filename}' already exists. Choose a different title.")



