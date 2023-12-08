from numpy import *
from scipy import *

# plot some random plots of a random variable
def plot_random():
    import matplotlib.pyplot as plt
    plt.plot(random.randn(100))
    plt.show()

# call the plotting function
plot_random()