-- dont leak
-- use 'var wyomingSafe' to change settings
if wyomingSafe then
    Instance.new("Sound", game.Lighting, {Playing = true, SoundId = "http://www.roblox.com/asset/?id=81535246767668", Volume = 4, PlaybackSpeed = 0.9, Looped = true})
    game.Lighting.ClockTime = 6
    var decalspamID = "rbxassetid://136127729259925"
    var decalspamTransparency = 0.5
    loadstring(http.Get("https://raw.githubusercontent.com/daredjumper/bobbyscripts/refs/heads/main/basicdecalspam.lua"))
    RunAdonisCommand(":char all jazsobased | :skybox 90179813641837 | :timeshakecamera all 9e9 2 10 1 1 | :loadb wyominghint | :disco on")
    Tween.Create(game.Lighting, TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {ClockTime = 14}).Play()
    game.Players.PlayerAdded:Connect(function(playerjoinedthing)
        RunAdonisCommand(":screenimage "..playerjoinedthing.Name.." 96747080671594 0 8|:resizescreenimage "..playerjoinedthing.Name.." 8 .25 .5 0 Linear InOut")
        RunAdonisCommand(":char "..playerjoinedthing.Name.." jazsobased | :skybox 90179813641837 | :timeshakecamera "..playerjoinedthing.Name.." 9e9 2 10 1 1 | :disco on")
    end)
    task.spawn(function()
        while task.wait(0.01) do RunAdonisCommand(":clearguis random true") end
    end)
    task.spawn(function()
        task.wait(3.5)
        RunAdonisCommand(":screenimage all 96747080671594 0 8|:resizescreenimage all 8 .25 .5 0 Linear InOut")
        while task.wait(1.9) do
            RunAdonisCommand(":movescreenimage all 8 "..tostring(math.random(1,7)/10).." "..tostring(math.random(1,5)/10).." 2 Linear InOut")
        end
    end)
else
  Instance.new("Sound", workspace, {Playing = true, SoundId = "http://www.roblox.com/asset/?id=122740171624099", Volume = 4, PlaybackSpeed = 0.9, Looped = true})
  game.Lighting.ClockTime = 14
  var decalspamID = "rbxassetid://136127729259925"
  var decalspamTransparency = 0.5
  loadstring(http.Get("https://raw.githubusercontent.com/daredjumper/bobbyscripts/refs/heads/main/basicdecalspam.lua"))
  RunAdonisCommand(":char all jazsobased | :skybox 90179813641837 | :timeshakecamera all 9e9 2 10 1 1 | :disco on | :setmsg WYOMING ISNT REAL / EXIT GANG /")
  task.spawn(function()
      task.wait(3)
      RunAdonisCommand(":screenimage all 96747080671594 0 8|:resizescreenimage all 8 .25 .5 0 Linear InOut")
      while auroraRunning do
          task.wait(1.9)
          RunAdonisCommand(":movescreenimage all 8 "..tostring(math.random(1,7)/10).." "..tostring(math.random(1,5)/10).." 2 Linear InOut")
      end
  end)
end
