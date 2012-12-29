exports.link = function(tree) {
  tree.functions.linked = function(input) {
    return new(tree.Anonymous)('linked-function-output-'+input.value);
  };
}
