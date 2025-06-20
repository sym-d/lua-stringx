-- #import "github.com/kikito/utf8" as utf8lib

local M = {}

-- Re-export normalize function
M.normalize = require("lib/unicode/normalize")

-- UTF-8 aware string length
function M.len(str)
    -- Would use utf8lib here
    local len = 0
    for _ in str:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        len = len + 1
    end
    return len
end

-- UTF-8 aware substring
function M.sub(str, start, finish)
    -- Simplified version - real one would use utf8lib
    local chars = {}
    for char in str:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        table.insert(chars, char)
    end
    
    local result = {}
    finish = finish or #chars
    for i = start, finish do
        if chars[i] then
            table.insert(result, chars[i])
        end
    end
    
    return table.concat(result)
end

return M