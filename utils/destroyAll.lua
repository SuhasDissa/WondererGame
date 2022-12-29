function DestroyAll()
    ColliderTableDestroy(Barriers)
    ColliderTableDestroy(Navigation)
    ColliderTableDestroy(Water)
    RemoveTable(Items)

    -- Remove enemies
    --[[ for i=#enemies,1,-1 do
        if enemies[i].physics ~= nil then
            enemies[i].physics:destroy()
        end
        table.remove(enemies, i)
    end
    ]]

end

function ColliderTableDestroy(tableList)
    local i = #tableList
    while i > 0 do
        if tableList[i] ~= nil then
            tableList[i]:destroy()
        end
        table.remove(tableList, i)
        i = i - 1
    end
end

function RemoveTable(tableList)
    local i = #tableList
    while i > 0 do
        table.remove(tableList, i)
        i = i - 1
    end
end
