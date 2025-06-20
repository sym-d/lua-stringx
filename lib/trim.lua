local M = {}

function M.ltrim(str)
    return str:match("^%s*(.*)")
end

function M.rtrim(str)
    return str:match("(.-)%s*$")
end

function M.trim(str)
    return M.ltrim(M.rtrim(str))
end

-- Advanced trim with custom characters
function M.trim_chars(str, chars)
    local pattern = string.format("^[%s]*(.-)[%s]*$", chars, chars)
    return str:match(pattern) or str
end

return M