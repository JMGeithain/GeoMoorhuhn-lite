name moorgeos.app

longname "MoorGEOS"

tokenchars "MHun"
tokenid 16506

type appl, process, single
class MoorGEOSProcessClass
appobj MoorGEOSApp

export MoorGEOSBoardClass

library geos
library ui

resource AppResource ui-object
resource Interface ui-object
resource BoardBlock object
