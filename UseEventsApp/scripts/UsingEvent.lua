--[[----------------------------------------------------------------------------

  Application Name: UseEvent

  Description:
  This sample app registers to an event which is served from another app.

  To demonstrate, this App must be started together with the sample app
  'ServeEventsApp', in which the event will be served and also be notified.

------------------------------------------------------------------------------]]

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



