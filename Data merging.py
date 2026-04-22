import pandas as pd
import os

#importing CSVs
folder_path = r"Path/To/Data/Folder"

#storingdataframes
all_data = []

#looping
for file in os.listdir(folder_path):
    if file.endswith('.csv'):  #checking CSV files
        file_path = os.path.join(folder_path, file)
        try:
            data = pd.read_csv(file_path, encoding="ISO-8859-1")
        except UnicodeDecodeError:
            data = pd.read_csv(file_path, encoding="latin1")
        data['Source File'] = file
        all_data.append(data)

#combining all CSV files
combined_data = pd.concat(all_data, ignore_index=True)

#save the combined data to a new CSV file
output_path = r"Path/To/Output/Folder"
combined_data.to_csv(output_path, index=False)

print(f"Combined file saved at: {output_path}")
