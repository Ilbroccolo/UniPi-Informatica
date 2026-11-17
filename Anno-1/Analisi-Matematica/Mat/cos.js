

function sumNestArray(){
     //controllo se l'array è vuoto caso base 
    if(arr.length === 0) {
        return 0;
    }

    let sum = 0;
    //controllo se l'elemento è un array
    //riceca interno all array
    for(let i = 0; i < arr.length; i++) {
        if (Array.isArray(arr[i])) {
            sum = sum + sumNestArray(arr[i])
        } else {
            //non è un array ma è un numero
            sum += arr[i];
        }
    }
    return sum;
}
console.log(sumNestArray([1, 2, [3, 4, [5, 6]]]));