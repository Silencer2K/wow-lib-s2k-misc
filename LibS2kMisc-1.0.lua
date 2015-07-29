local MAJOR, MINOR = "LibS2kMisc-1.0", 201507292

local lib, oldMinor = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

-- table extensions

function table.is_empty(tab)
    for _ in pairs(tab) do
        return false
    end
    return true
end

function table.len(tab)
    local count = 0
    for _ in pairs(tab) do
        count = count + 1
    end
    return count
end

function table.select(tab, ...)
    local indexes, res = {...}, {}
    local i, j = 0
    for _, j in ipairs(indexes) do
        i = i + 1
        res[i] = tab[j]
    end
    return unpack(res, 1, i)
end

function table.pairs(tab, needUnpack)
    local index
    return function()
        local k, v = next(tab, index)
        if k then
            index = k
            if needUnpack then
                return k, unpack(v)
            end
            return k, v
        end
    end
end

function table.values(tab, needUnpack)
    local index
    return function()
        local k, v = next(tab, index)
        if k then
            index = k
            if needUnpack then
                return unpack(v)
            end
            return v
        end
    end
end
