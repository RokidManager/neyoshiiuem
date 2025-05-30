task.spawn(function()
    while true do
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RokidManager/neyoshiiuem/refs/heads/main/Check%20Executor"))()
        end)
        task.wait(1)
    end
end)
