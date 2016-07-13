# Elementary brute force algorithms:

1. produce a count for a given list for a given length.
2. enumerate all the subsets of a particular set (power set).
3. enumerate all the possible subsets of a particular size of a particular set. 
4. enumerate all the possible permutation of a given list with unique elements.

### produce a count for a given list for a given length
javascript
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
java
```java
public class Solution {
    
    public static <T> List<T[]> counter(T[] alphabet, int length) {
        int alphabetSize = alphabet.length;
        ArrayList<T[]> counts = new ArrayList<>();
        if (alphabetSize < 1 || length < 1) {
            return counts;
        }
        for (int i = 0; i < Math.pow(alphabetSize, length); i++) {
            @SuppressWarnings("unchecked")
            T[] count = (T[])Array.newInstance(alphabet[0].getClass(), length);
            int enumeration = i;
            for (int j = length - 1; j >= 0; j--) {
                T val = alphabet[enumeration % alphabetSize];
                count[j] = val;
                enumeration /= alphabetSize;
            }
            counts.add(count);
        }
        return counts;
    }
    public static void main(String[] args) {
        List<Integer[]> vaList = counter(new Integer[]{1,5,3,8}, 5);
        for (Integer[] count : vaList) {
            for (Integer num : count) {
                System.out.print(num + " ");
            }
            System.out.println();
        }
    }
}

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

# Brute force examples

```java
public class Solution {
    
    public static boolean containsTwoConsecutiveOnes(int num, int length) {
        for (int j = 0; j < length - 1; j++) {
            if ((num >> j & 1) == 1 && (num >> (j + 1) & 1) == 1 ) {
                return true;
            }
        }
        return false;
    }
    
    public static int climbStairs(int n) {
        int possibilities = 0;
        for(int i = 0; i < Math.pow(2, n - 1); i++) {
            if (!containsTwoConsecutiveOnes(i, n - 1)) {
                possibilities++;
            }
        }
        return possibilities;
    }
    public static void main(String[] args) {
        for(int i = 1; i < 13; i++) {
            System.out.println(climbStairs(i));
        }
    }
}
```
