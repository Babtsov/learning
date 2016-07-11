# Elementary brute force algorithms:
1. enumerate all the subsets of a particular set.(super set)
2. enumerate all the possible subsets of a particular size of a particular set. (combinations)
3. enumerate all the possible permutation of a given list. (permutations) 

### enumerate all the possible permutation of a given list. (permutations)  
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
