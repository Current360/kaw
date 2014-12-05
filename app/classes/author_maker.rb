class AuthorMaker
  def initialize(author)
    @author = author
  end

  def build
    @author.map do |author|
      Author.new(author.first_name, author.id)
    end
  end
end
