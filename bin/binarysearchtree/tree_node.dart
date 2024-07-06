class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  void traverse(TreeNode? node) {
    if (node == null) return;
    print('Node: ${node.val}');
    print('Node: ${node.left?.val}');
    print('Node: ${node.right?.val}');
    return traverse(node.left);
  }
}
