class Bios
  attr_accessor :first_name, :last_name, :real_title, :funny_title,
                :question1, :question2, :question3, :question4, :question5,
                :answer1, :answer2,:answer3, :answer4, :answer5

  def initalize(first_name, last_name, real_title, funny_title, question1, question2, question3, question4, question5, answer1, answer2, answer3, answer4, answer5)
    @first_name = first_name
    @last_name = last_name
    @real_title = real_title
    @funny_title = funny_title
    @question1 = question1
    @question2 = question2
    @question3 = question3
    @question4 = question4
    @question5 = question5
    @answer1 = answer1
    @answer2 = answer2
    @answer3 = answer3
    @answer4 = answer4
    @answer5 = answer5
  end


end
