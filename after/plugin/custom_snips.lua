local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp",{
    -- s("cp", fmt(
    --     [[
    --     #include <bits/stdc++.h>
    --     using namespace std;
    --     int main(){
    --         return 0;
    --     }
    --     ]], {i(0)}
    -- )),
    s("in", t({"#include <bits/stdc++.h>", "using namespace std;", "int main(){", "    ios_base::sync_with_stdio(false);", "    cin.tie(nullptr);", "    return 0;", "}"})),
})

-- "watch : https://www.youtube.com/watch?v=FmHhonPjvvA"
