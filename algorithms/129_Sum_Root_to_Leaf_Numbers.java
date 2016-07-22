// recursive strategy
public int sumNumbers(TreeNode root) {
    return helper(root, new ArrayList<>());
}

public int helper(TreeNode root,ArrayList<TreeNode> pathToNode) {
    if (root == null) {
        return 0;
    }
    pathToNode.add(root); // push
    int sum = helper(root.left, pathToNode) + helper(root.right, pathToNode);
    if (sum == 0) { // means we have a leaf (both children were null)
        for (int i = pathToNode.size() - 1, decima = 1; i >= 0; i--, decima *= 10) {
            sum += decima * pathToNode.get(i).val;
        }
    }
    pathToNode.remove(pathToNode.size() - 1); // pop
    return sum;
}
