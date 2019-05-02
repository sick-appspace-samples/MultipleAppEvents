--[[----------------------------------------------------------------------------

  Application Name: ServeEventsApp

  Description:
  This sample app serves an event on which another app can register.

  To demonstrate, this App must be started together with the sample app
  'UseEventsApp', in which a function is registered to the event.
  The serving of the event is also noted in the App Properties
------------------------------------------------------------------------------]]
--Start of Global Scope---------------------------------------------------------

local counter = 0

-- Serving the event to make it accessible from other apps
Script.serveEvent('ServeEventsApp.MyServedEvent', 'MyServedEvent')

local tmr = Timer.create()
Timer.setPeriodic(tmr, true)
Timer.setExpirationTime(tmr, 1000)

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

local function handleOnStarted()
  Timer.start(tmr)
end
Script.register("Engine.OnStarted", handleOnStarted)

-- Is called every time the timer expires
local function handleOnExpired()
  counter = counter + 1
  -- Also a parameter can be passed with the event
  local parameterString = counter .. ' times'
  -- This is actually notifying the event
  Script.notifyEvent('MyServedEvent', parameterString)
end
Timer.register(tmr, "OnExpired", handleOnExpired)

--End of Function and Event Scope------------------------------------------------
