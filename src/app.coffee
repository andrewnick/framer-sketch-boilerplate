# # deviceType can be either "phone" or "desktop"
Framer.DeviceView.Devices["custom"] =
  "deviceType": "phone"
  "screenWidth": 384
  "screenHeight": 640
  "deviceImage": "http://f.cl.ly/items/001L0v3c1f120t0p2z24/custom.png"
  "deviceImageWidth": 800
  "deviceImageHeight": 1203

Framer.Device = new Framer.DeviceView();
Framer.Device.setupContext();
# Set custom device
Framer.Device.deviceType = "custom"

# Set background
bg = new BackgroundLayer backgroundColor: "#FFFFFF"
bg.bringToFront()

# # Create layer
# layerA = new Layer
#   width: 200
#   height: 200
#   borderRadius: 8
#   backgroundColor: "#fff"

# Center layer
# layerA.center()

Framer.Defaults.Animation =
  curve: 'spring(150, 10, 0)'

circle = new Layer
  x: 0
  y: 0
  image: 'images/circle.png'



circle.on Events.Click, ->
  bounce = new Animation
    layer: circle
    properties:
      x: 200 * Math.random()
      y: 200 * Math.random()

  bounce.start()


