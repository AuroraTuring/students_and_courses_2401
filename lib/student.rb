class Student
  attr_reader :name, :age, :scores

  def initialize(data)
    @name = data[:name]
    @age = data[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    scores.sum(0.0) / scores.size
    # score1 = 89
    # score2 = 78
    # average = (score1 + score2)/2.0
  end
end
