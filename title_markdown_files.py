import os

folder_path = input("Enter folder path: ")
list_of_files = os.listdir(folder_path)

for file in list_of_files:
    if file.endswith(".md") and not file.startswith("."):
        new_file = file.removesuffix(".md").replace("-", " ").replace("_", " ").title().strip() + ".md"
        old_name = os.path.join(folder_path, file)
        new_name = os.path.join(folder_path, new_file)
        os.rename(old_name, new_name)
