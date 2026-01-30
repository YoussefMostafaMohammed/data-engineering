import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5]

y = [200, 450, 300, 500, 700]


plt.plot(x, y, marker='o', color='blue', linestyle='--')  # Line with dots


plt.title("Weekly Sales")

plt.xlabel("Week")
plt.ylabel("Sales (EGP)")

plt.show()

