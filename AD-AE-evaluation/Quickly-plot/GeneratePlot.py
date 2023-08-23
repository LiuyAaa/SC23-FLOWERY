import os
import re
import matplotlib.pyplot as plt

def parse_file(file_path):
    data = []
    with open(file_path, "r") as file:
        content = file.read()
        matches = re.findall(r"IR level SDC coverage: (\d+)%\s+Assembly level SDC coverage: (\d+)%\s+New Assembly SDC coverage: (\d+)%", content)
        data = [list(map(int, match)) for match in matches]
    return data

def generate_graph(benchmark, data):
    x = [0, 30, 50, 100]
    labels = ["IR level SDC coverage", "Assembly level SDC coverage", "New Assembly SDC coverage"]

    for i, label in enumerate(labels):
        plt.plot(x, [line[i] for line in data], marker='o', label=label)

    plt.xlabel('Protection Level')
    plt.ylabel('SDC Coverage (%)')
    plt.title(f'{benchmark} SDC Coverage')
    plt.xticks(x)
    plt.yticks(range(0, 101, 10))
    plt.legend()
    plt.grid(True)
    plt.savefig(f"{benchmark}_graph.png")
    plt.clf()

def main():
    benchmark_names = [
        "backprop", "lud", "pathfinder", "bfs", "EP", "CG", "IS", "basicmath",
        "qsort", "susan", "crc32", "fft2", "nn", "needle", "patricia", "stringsearch"
    ]

    for benchmark in benchmark_names:
        file_path = f"{benchmark}_result.txt"
        if os.path.exists(file_path):
            data = parse_file(file_path)
            generate_graph(benchmark, data)
            print(f"Generated graph for {benchmark}")
        else:
            print(f"File not found for {benchmark}")

if __name__ == "__main__":
    main()
