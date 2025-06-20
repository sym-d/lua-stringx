-- #import "github.com/kikito/utf8" as utf8
-- #import "github.com/moteus/lua-log" as log

local stringx = {}

-- Re-export submodules
stringx.trim = require("lib/trim")
stringx.split = require("lib/split")
stringx.case = require("lib/case")
stringx.unicode = require("lib/unicode")

-- Main module info
stringx.VERSION = "1.0.0"
stringx.AUTHOR = "Your Name"

-- Convenience function that uses multiple submodules
function stringx.clean(str)
    if not str then return "" end
    
    -- Use our log dependency
    -- log.debug("Cleaning string: " .. str)
    
    -- Chain operations
    str = stringx.trim.trim(str)
    str = stringx.case.lower(str)
    
    return str
end

-- Advanced function using external dependency
function stringx.normalize_unicode(str)
    -- This would use the utf8 dependency
    return stringx.unicode.normalize(str)
end

return stringx