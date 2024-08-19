import os
import numpy as np
import argparse

### Use this to reduc ethe memory occupation of .chi2 files beforre pushing on github ###

def get_total_memory(directory):
    total_size = 0
    for root, _, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            total_size += os.path.getsize(file_path)
    return total_size

def import_chi2_files(directory):
    chi2_files = []
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.chi2'):
                chi2_files.append(os.path.join(root, file))
   
    data = {}
    headers = {}
    for file_path in chi2_files:
        with open(file_path, 'r') as f:
            first_line = f.readline().strip()
            if '# PROCESSED' not in first_line:
                headers[file_path] = first_line
                try:
                    data[file_path] = np.loadtxt(file_path, skiprows=1)
                except ValueError as e:
                    print(f"Skipping file {file_path} due to error: {e}")
    return data, headers

def reduce_chi2_files(directory, target_memory):
    data, headers = import_chi2_files(directory)
    for file_path, content in data.items():
        current_memory = content.nbytes
        if current_memory > target_memory:
            reduction_factor = int(np.ceil(current_memory / target_memory))
            reduced_content = content[::reduction_factor]
            with open(file_path, 'w') as f:
                f.write(headers[file_path] + ' # PROCESSED\n')
                np.savetxt(f, reduced_content)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Reduce .chi2 files to fit a target memory size.")
    parser.add_argument("directory", type=str, help="Directory containing .chi2 files")
    parser.add_argument("target_memory", type=int, help="Target memory size in bytes (50000 works fine)")

    args = parser.parse_args()

    # Print total memory before processing
    total_memory_before = get_total_memory(args.directory)
    print(f"Total memory before processing: {total_memory_before} bytes")

    reduce_chi2_files(args.directory, args.target_memory)

    # Print total memory after processing
    total_memory_after = get_total_memory(args.directory)
    print(f"Total memory after processing: {total_memory_after} bytes")