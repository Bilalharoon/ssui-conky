local function interp (s, t)
    return s:gsub('(#%b{})', function (w)
        return t[w:sub(3, -2)] or w
    end)
end