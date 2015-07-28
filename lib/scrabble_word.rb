class ScrabbleWord

# set letter values as hash
  VALUES = {a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8,
  k: 5, l: 1, m: 3, n: 1, o: 1,
  p: 3, q: 10, r: 1, s: 1, t: 1,
  u: 1, v: 4, w: 4, x: 8, y: 4,
  z: 10}

# initiatlize word variable
  def initialize(word)
    @word = word
    @score = 0
  end

# get score for given word by tying each letter to the VALUES hash
  def score
    @word.each_char do | letter |
      @score += VALUES[letter.downcase.to_sym]
    end
    return @score
  end

# operationalize double and triple word scores
  def multiplier_score (multiplier)
    @score = multiplier*score
  end

# note: does NOT handle double and triple letter scores
end
