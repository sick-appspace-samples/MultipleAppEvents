
--Start of Function and Event Scope---------------------------------------------

-- This function is called every time when "MyServedEvent" occurs.
-- The parameter is passed with the event notification
local function handleMyServedEvent(myParameter)
  print("The Event occurred")
  print(myParameter)
end
-- The script registers to the "MyServedEvent" event from the sample app "ServeEvent
Script.register("ServeEventsApp.MyServedEvent", handleMyServedEvent)

--End of Function and Event Scope------------------------------------------------



