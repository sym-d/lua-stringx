local M = {}

function M.upper(str)
    return string.upper(str)
end

function M.lower(str)
    return string.lower(str)
end

function M.capitalize(str)
    return str:gsub("^%l", string.upper)
end

function M.title(str)
    return str:gsub("(%a)([%w_']*)", function(first, rest)
        return first:upper() .. rest:lower()
    end)
end

function M.camel_case(str)
    return str:gsub("[-_](%a)", function(letter)
        return letter:upper()
    end):gsub("^%l", string.lower)
end

function M.snake_case(str)
    return str:gsub("([a-z])([A-Z])", "%1_%2")
              :gsub("[%s-]+", "_")
              :lower()
end

return M