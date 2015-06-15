var Bob = function() {}

Bob.prototype.hey = function(phrase) {
  if (isSilent(phrase)) {
    return 'Fine. Be that way!'
  }
  if (isShouting(phrase) && !isOnlyNumbers(phrase)) {
    return 'Whoa, chill out!'
  }
  if (isQuestion(phrase)) {
    return 'Sure.'
  }
  return 'Whatever.'
};

var isSilent = function(input) {
  return input.trim() === '';
}
var isShouting = function(input) {
  return input.toLowerCase() !== input && input.toUpperCase() === input
}
var isOnlyNumbers = function(input) {
  return !input.match('[a-zA-Z]')
}
var isQuestion = function(input) {
  return input[input.length -1] == '?';
}

module.exports = Bob;
