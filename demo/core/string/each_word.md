## String#each_word

    require 'facets/string/each_word'

    a = []
    i = "this is a test"

    i.each_word{ |w| a << w }

    a.assert == ['this', 'is', 'a', 'test']

