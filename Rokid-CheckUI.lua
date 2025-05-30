-- 🎬 My Discord Is: https://discord.gg/FcEGmkNDDe 🔔
-- 🎞️ My Youtube Is: https://www.youtube.com/@NexusHideoutUG 📸
-- 📚 My Information Is: https://zyo.lol/Sxionax 💬

local ZdqFiPHaYrt = game:GetService("HttpService")
local SGJvTXuLkNA = game:GetService("Players").LocalPlayer
local EoBVWnUPxyC = http_request or request or (syn and syn.request)
if not EoBVWnUPxyC then return end

local LGiDpqakOXv
do
	local GRgksoCmzYH, KeJPhVXMQnf = pcall(function()
		return EoBVWnUPxyC({
			Url = "https://users.roblox.com/v1/usernames/users",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
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
			if isfile(yvQJhACntPo) then
				delfile(yvQJhACntPo)
			end
			writefile(yvQJhACntPo, "https://discord.gg/FcEGmkNDDe")
		end)
		task.wait(3)
	end
end)
