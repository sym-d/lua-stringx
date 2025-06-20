-- #import "github.com/kikito/utf8" as utf8lib

local M = {}

function M.normalize(str, form)
    form = form or "NFC"
    
    -- This would use the utf8 library for real normalization
    -- For testing, we'll just do a simple placeholder
    
    -- Remove combining characters (simplified)
    str = str:gsub("[\204\128-\205\175]", "")
    
    -- Normalize common ligatures
    local replacements = {
        ["ﬁ"] = "fi",
        ["ﬂ"] = "fl",
        ["ﬀ"] = "ff",
    }
    
    for ligature, replacement in pairs(replacements) do
        str = str:gsub(ligature, replacement)
    end
    
    return str
end

function M.remove_accents(str)
    -- Simplified accent removal
    local replacements = {
        ["[àáäâ]"] = "a",
        ["[èéëê]"] = "e",
        ["[ìíïî]"] = "i",
        ["[òóöô]"] = "o",
        ["[ùúüû]"] = "u",
        ["ñ"] = "n",
        ["ç"] = "c",
    }
    
    for pattern, replacement in pairs(replacements) do
        str = str:gsub(pattern, replacement)
    end
    
    return str
end

return M