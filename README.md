LibS2kMisc
==========

Synopsis:
---------
    -- table extensions

    if table.is_empty(tab) then
        -- do something
    end

    for i = 1, table.len(tab) do
        -- do something
    end

    local item_1, item_3, item_7 = table.select(tab, 1, 3, 7)

    for key, item_1, item_2, item_3 in table.pairs(tab, true) do
        -- do something
    end

    for item_1, item_2, item_3 in table.values(tab, true) do
        -- do something
    end
