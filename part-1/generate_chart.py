import matplotlib.pyplot as plt

years = ["2023", "2024", "2025", "2026"]
counts = [3, 31, 88, 27]

plt.figure(figsize=(8, 5))
bars = plt.bar(years, counts, color="#2c3e50", edgecolor="black", alpha=0.8)

# Dodanie etykiet nad słupkami
for bar in bars:
    yval = bar.get_height()
    plt.text(
        bar.get_x() + bar.get_width() / 2,
        yval + 1,
        int(yval),
        ha="center",
        va="bottom",
        fontsize=10,
    )

plt.title("Liczba publikacji w podziale na lata (wyniki SLR)", fontsize=14, pad=15)
plt.xlabel("Rok publikacji", fontsize=12)
plt.ylabel("Liczba artykułów", fontsize=12)
plt.grid(axis="y", linestyle="--", alpha=0.7)
plt.tight_layout()

plt.savefig("publications_by_year.png", dpi=300)
print("Wykres zapisany jako publications_by_year.png")
