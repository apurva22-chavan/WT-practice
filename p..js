function generateFibonacci(n) {
    let fibSeries = [0, 1];
  
    // Generate the Fibonacci sequence
    for (let i = 2; i < n; i++) {
      fibSeries.push(fibSeries[i - 1] + fibSeries[i - 2]);
    }
  
    return fibSeries;
  }
  
  // Example usage:
  const terms = 10;
  console.log(generateFibonacci(terms)); // Prints the first 10 Fibonacci numbers
  