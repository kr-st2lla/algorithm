const solution = order => [...order.toString()].reduce((a, c) => (+c && !(c % 3)) ? a += 1:a, 0);