class CamelCaser


  def initialize(content)

    @content = content

  end



  def camelize

    word_array = @content[0].tr('/', ' ').split

    capitalized = []

    for word in word_array

      capitalized << word.capitalize

    end

    new_s = ''

    for word in capitalized

    new_s << word

    end

    return new_s



  end

















end