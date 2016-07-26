public int firstBadVersion(int n) {
    int begin = 1, end = n;
    while (end >= begin) {
        int middle = (end - begin) / 2 + begin;
        if (isBadVersion(middle)) {
            if (end - begin <= 1) { 
                return middle;
            }
            end = middle;
        }else {
            begin = middle + 1;
        }
    }
    return -1;
}
