class Shape
  constructor: (opts) ->
    @x = opts.x
    @y = opts.y
    @radius = opts.radius
    @width = opts.width
    @height = opts.height
    @fillColor = opts.fillColor
    @borderColor = opts.borderColor
    @borderWidth = borderWidth
    @listeners = {}

  draw: () -> 
    console.warn 'Please re implement this method'
    return

  includePoint: (point) ->
    console.warn 'Please re implement this method'
    return

  moveTo: (coordinate) ->
    @x = coordinate.x
    @y = coordinate.y

  addEventListener: (eventName, func) ->
    if !@listeners[eventName]
       eventListeners = @listeners[eventName] = []
    eventListeners.push(func)
    return
    
  removeEventListener: (eventName, func) ->
    if eventName in @listeners
      eventListeners = @listeners[eventName]
      if (index = eventListeners.indexOf(func)) > -1
         eventListeners.splice(index, 1)
    return
  
module.exports = Shape