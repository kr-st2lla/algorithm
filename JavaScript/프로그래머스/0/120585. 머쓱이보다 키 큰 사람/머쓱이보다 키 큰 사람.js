const solution = (array, height) => array.reduce((a, c) => c > height? a+=1:a, 0);