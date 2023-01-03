hs.hotkey.bind({"ctrl"}, "space", function()
  local app = hs.application.get("Code")
  if app then
      if not app:mainWindow() then
          app:selectMenuItem({"Code", "New Window"})
      elseif app:isFrontmost() then
          app:hide()
      else
          app:activate()
      end
  else
      hs.application.launchOrFocus("Code")
  end
end)