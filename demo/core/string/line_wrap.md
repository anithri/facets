## String#line_wrap

    require 'facets/string/line_wrap'

    "abc123".line_wrap(3).assert == "abc\n123\n"
    "abcd123".line_wrap(4).assert == "abcd\n123\n"

