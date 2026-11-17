function sumNestArray(arr) { 
    if(arr.length === 0) {
        return 0;
    }
    
    let sum = 0;
    for (let element of arr) {
        if (Array.isArray(element)) {
            sum += sumNestArray(element); 
        } else {
            sum += element;
        }
    }
    return sum;
}

console.log(sumNestArray([1, 2, [3, 4, [5, 6]]]));