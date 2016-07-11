# Elementary brute force algorithms:

1. produce a count for a given list for a given length.
2. enumerate all the subsets of a particular set (power set).
3. enumerate all the possible subsets of a particular size of a particular set. 
4. enumerate all the possible permutation of a given list with unique elements.

### produce a count for a given list for a given length
```javascript
function getCounts(list,length) {
    if (list.constructor !== Array || typeof length !== "number") {
        return [];
    }
    var counts = [];
    var left = [];              
    var right = list.slice();   
    (function count() {
        if (left.length == length) {
            counts.push(left.slice());
            return;
        }
        for (let i = 0, n = right.length; i < n; i++) {
            left.push(right[i]);
            count();
            left.pop();
        }
    }());
    return counts;
} 

var counts = getCounts([1,2,3],4);
counts.forEach((count) => console.log(count));
```


### enumerate all the possible permutation of a given list with unique elements 
```javascript
function getPermutations(list) {
    if (list.constructor !== Array) {
        return [];
    }
    var permutations = [];
    
    var leftList = [];
    var rightList = list.slice();
    (function permute() {
        if (rightList.length === 1) {
            permutations.push(leftList.concat(rightList));
            return;
        }
        for (let i = 0, n = rightList.length; i < n; i++) {
            // transfer an element from right to left
            let current = rightList[i];
            leftList.push(current);
            rightList.splice(i, 1);
            // recurse
            permute();
            // restore left and right
            leftList.pop();
            rightList.splice(i, 0, current);
        }
    })();
    return permutations;
}

var permutations = getPermutations([1,2,3]);
permutations.forEach((permutation) => console.log(permutation));
```
