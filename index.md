# Welcome to My AR Quick Look Demo

This is a demonstration of using AR Quick Look in a markdown file. AR Quick Look allows you to preview 3D models and AR content directly in your web browser or on your iOS device.

## 3D Model Example

Check out this incredible 3D model of a Nike Airfoce:
<model class = "model" src="sneaker_airforce.usdz" alt="3D Model" auto-rotate camera-controls ar>
    <div class="controls">
      <button slot="ar-button">View in AR</button>
    </div>
  </model>
<a href="sneaker_airforce.usdz" rel="ar">
  View in AR
</a>
To view the AR experience:
- On iOS devices: Tap on the model to open it in AR Quick Look.
- On supported web browsers: Click on the model and look for the AR icon to enter AR mode.

## About AR Quick Look

AR Quick Look is a powerful feature that brings 3D models and AR experiences to the web. It allows users to interact with 3D content seamlessly without the need for additional apps or plugins.

Some key features of AR Quick Look include:
- Preview 3D models directly in the browser or on iOS devices.
- Rotate, zoom, and pan the model using intuitive controls.
- Place the 3D model in the real world using AR technology (on supported devices).
- Share AR experiences with others via links or embeds.

## Getting Started

To create your own AR Quick Look experiences, you'll need:
1. A 3D model in USDZ format.
2. A web server configured to serve the USDZ file with the correct MIME type (`model/vnd.usdz+zip`).
3. HTML markup using the `<model-viewer>` element to embed the 3D model.

For more information on AR Quick Look and how to create your own experiences, check out the following resources:
- [Apple's AR Quick Look Documentation](https://developer.apple.com/augmented-reality/quick-look/)
- [<model-viewer> Documentation](https://modelviewer.dev/)

Feel free to explore the 3D model and enjoy the AR experience!

---

This is just a simple example, but you can customize the content and style of your `index.md` file to suit your needs. Remember to replace `path/to/your/robot_model.usdz` with the actual path to your USDZ model file.
