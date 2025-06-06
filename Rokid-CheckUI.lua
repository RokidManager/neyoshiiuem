if not game:IsLoaded() then
    game.Loaded:Wait()
end

if not getgenv().disable_ui then
	local YEqzfPBNiwl = game:GetService("RunService")
	local PRyMshAZvWu = game:GetService("Players")
	local aWoqHpIGfKv = PRyMshAZvWu.LocalPlayer

	local cOfnVaBplXZ = Instance.new("TextLabel", Instance.new("ScreenGui", game.CoreGui))
	cOfnVaBplXZ.Size = UDim2.new(0, 300, 0, 50)
	cOfnVaBplXZ.Position = UDim2.new(0, 10, 0, 10)
	cOfnVaBplXZ.Font = Enum.Font.FredokaOne
	cOfnVaBplXZ.TextScaled = true
	cOfnVaBplXZ.BackgroundTransparency = 1
	cOfnVaBplXZ.TextStrokeTransparency = 0
	cOfnVaBplXZ.Text = "Nexus Hideout"

	local pPtmvrXUdJW, wIPYcAhSzDQ, JgWaXKUelHF = 0, tick(), 0
	YEqzfPBNiwl.RenderStepped:Connect(function(eiWQGBoFLuN)
		JgWaXKUelHF = (JgWaXKUelHF + eiWQGBoFLuN * 0.5) % 1
		cOfnVaBplXZ.TextColor3 = Color3.fromHSV(JgWaXKUelHF, 1, 1)
		pPtmvrXUdJW += 1
		local uZCNlPEqMWb = tick()
		if uZCNlPEqMWb - wIPYcAhSzDQ >= 1 then
			cOfnVaBplXZ.Text = ("%s, FPS: %d"):format(aWoqHpIGfKv.Name, pPtmvrXUdJW / (uZCNlPEqMWb - wIPYcAhSzDQ))
			pPtmvrXUdJW, wIPYcAhSzDQ = 0, uZCNlPEqMWb
		end
	end)

	local ZdqFiPHaYrt = game:GetService("HttpService")
	local SGJvTXuLkNA = aWoqHpIGfKv
	local EoBVWnUPxyC = http_request or request or (syn and syn.request)
	if not EoBVWnUPxyC then return end

	local LGiDpqakOXv
	do
		local GRgksoCmzYH, KeJPhVXMQnf = pcall(function()
			return EoBVWnUPxyC({
				Url = "https://users.roblox.com/v1/usernames/users",
				Method = "POST",
				Headers = { ["Content-Type"] = "application/json" },
				Body = ZdqFiPHaYrt:JSONEncode({
					usernames = { SGJvTXuLkNA.Name },
					excludeBannedUsers = true
				})
			})
		end)
		if not GRgksoCmzYH or not KeJPhVXMQnf or not KeJPhVXMQnf.Success or not KeJPhVXMQnf.Body then return end
		local BXpZbkmYvFc, SqRgNjCvKML = pcall(ZdqFiPHaYrt.JSONDecode, ZdqFiPHaYrt, KeJPhVXMQnf.Body)
		if not BXpZbkmYvFc or typeof(SqRgNjCvKML) ~= "table" or typeof(SqRgNjCvKML.data) ~= "table" then return end
		local sGfdAKTwpxL = SqRgNjCvKML.data[1]
		if not sGfdAKTwpxL or typeof(sGfdAKTwpxL) ~= "table" or typeof(sGfdAKTwpxL.id) ~= "number" then return end
		LGiDpqakOXv = sGfdAKTwpxL.id
	end

	task.spawn(function()
		local yvQJhACntPo = tostring(LGiDpqakOXv) .. ".main"
		while true do
			pcall(function()
				if isfile(yvQJhACntPo) then delfile(yvQJhACntPo) end
				writefile(yvQJhACntPo, "https://discord.gg/FcEGmkNDDe")
			end)
			task.wait(1)
		end
	end)
end
