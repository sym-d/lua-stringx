-- #import "github.com/yourusername/lua-stringx" as sx

-- Example: Clean and process user input
local function process_user_input(input)
    -- Clean the input
    input = sx.clean(input)
    
    -- Split into words
    local words = sx.split.split_words(input)
    
    -- Capitalize each word
    for i, word in ipairs(words) do
        words[i] = sx.case.capitalize(word)
    end
    
    return table.concat(words, " ")
end

-- Example: Generate URL slug
local function make_slug(title)
    return sx.case.snake_case(
        sx.unicode.remove_accents(
            sx.trim.trim(title)
        )
    ):gsub("_", "-"):gsub("[^%w-]", "")
end

-- Demo
print("Original: '  Hello WORLD!  '")
print("Processed:", process_user_input("  Hello WORLD!  "))

print("\nSlug examples:")
print("'My Blog Post!' ->", make_slug("My Blog Post!"))
print("'Café René' ->", make_slug("Café René"))