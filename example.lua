RegisterCommand('testlockpick', function() 
    local minigame = exports["qb-lockpick"]:Minigame()
    if minigame then 
        print('User won the minigame')
    else
        print('User lost the minigame')
    end
end)
