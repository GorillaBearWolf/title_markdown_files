import os

folder_path = input("Enter folder path: ")
list_of_files = os.listdir(folder_path)

for file in list_of_files:
    if file.endswith(".md") and not file.startswith("."):
        old_path = os.path.join(folder_path, file)
        new_name = file.removesuffix(".md").replace("-", " ").replace("_", " ").title().strip() + ".md"
        new_path = os.path.join(folder_path, new_name)
        os.rename(old_path, new_path)
