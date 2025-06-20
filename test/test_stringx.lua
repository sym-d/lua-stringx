-- #import "github.com/sym-d/lua-stringx" as stringx

local function test_trim()
    assert(stringx.trim.trim("  hello  ") == "hello")
    assert(stringx.trim.ltrim("  hello  ") == "hello  ")
    assert(stringx.trim.rtrim("  hello  ") == "  hello")
    assert(stringx.trim.trim_chars("--hello--", "-") == "hello")
    print("✓ Trim tests passed")
end

local function test_split()
    local parts = stringx.split.split("a,b,c", ",")
    assert(#parts == 3)
    assert(parts[1] == "a" and parts[2] == "b" and parts[3] == "c")
    
    local words = stringx.split.split_words("hello world lua")
    assert(#words == 3)
    print("✓ Split tests passed")
end

local function test_case()
    assert(stringx.case.capitalize("hello") == "Hello")
    assert(stringx.case.title("hello world") == "Hello World")
    assert(stringx.case.snake_case("HelloWorld") == "hello_world")
    assert(stringx.case.camel_case("hello-world") == "helloWorld")
    print("✓ Case tests passed")
end

local function test_unicode()
    assert(stringx.unicode.len("hello") == 5)
    assert(stringx.unicode.len("👋🌍") == 2)
    assert(stringx.unicode.sub("hello", 2, 4) == "ell")
    print("✓ Unicode tests passed")
end

local function main()
    print("Testing lua-stringx...")
    test_trim()
    test_split()
    test_case()
    test_unicode()
    print("\nAll tests passed! ✨")
end

main()