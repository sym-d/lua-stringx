-- Module manifest for luasuite
return {
    name = "lua-stringx"
    location = "github.com/sym-d/lua-stringx",
    version = "1.0.0",
    description = "Extended string manipulation library for Lua",

    -- Dependencies to test transitive resolution
    dependencies = {
        -- Let's pretend these exist for testing
        ["github.com/kikito/utf8"] = ">=1.0.0",
        ["github.com/moteus/lua-log"] = "^0.1.0"
    },

    -- Optional: specify Lua version compatibility
    lua = ">=5.1",

    -- Optional: entry points
    exports = {
        "init",           -- main module
        "lib/trim",       -- individual functions
        "lib/split",
        "lib/case",
        "lib/unicode"     -- submodule
    }
}