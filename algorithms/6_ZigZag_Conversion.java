public String convert(String s, int numRows) {
    if (numRows <= 1) {
        return s;
    }
    int leap = 2 * numRows - 2;
    StringBuilder sBuilder = new StringBuilder(s.length());
    for (int j = 0; j < s.length(); j += leap) {
        sBuilder.append(s.charAt(j));
    }
    for (int i = 1; i < numRows - 1 && i < s.length(); i++) {
        sBuilder.append(s.charAt(i));
        int oscillate = leap - 2 * i;
        for (int j = i + oscillate; j < s.length(); j += oscillate) {
            sBuilder.append(s.charAt(j));
            oscillate = leap - oscillate;
        }
    }
    for (int j = numRows - 1; j < s.length(); j += leap) {
        sBuilder.append(s.charAt(j));
    }
    return sBuilder.toString();
}
