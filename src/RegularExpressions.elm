module RegularExpressions exposing(main)

import Regex
import Html


pattern = "\\d\\d:\\d\\d (a\\.m\\.|p\\.m\\.)"


maybeRegex = Regex.fromString pattern


main =
    Html.text pattern