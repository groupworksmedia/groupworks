// model-element.js

class ModelElement extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
  }

  connectedCallback() {
    this.render();
  }

  attributeChangedCallback(name, oldValue, newValue) {
    if (name === 'src') {
      this.render();
    }
  }

  static get observedAttributes() {
    return ['src'];
  }

  render() {
    const src = this.getAttribute('src');
    const arModes = this.getAttribute('ar-modes');
    const cameraControls = this.hasAttribute('camera-controls');
    const poster = this.getAttribute('poster');
    const shadowIntensity = this.getAttribute('shadow-intensity');

    this.shadowRoot.innerHTML = `
      <style>
        :host {
          display: block;
          width: 100%;
          height: 400px;
        }
        .model-container {
          width: 100%;
          height: 100%;
          position: relative;
        }
        model-viewer {
          width: 100%;
          height: 100%;
        }
      </style>
      <div class="model-container">
        <model-viewer
          src="${src}"
          ar
          ar-modes="${arModes}"
          ${cameraControls ? 'camera-controls' : ''}
          poster="${poster}"
          shadow-intensity="${shadowIntensity}"
        >
          <div class="progress-bar hide" slot="progress-bar">
            <div class="update-bar"></div>
          </div>
          <button slot="ar-button" id="ar-button">
            View in AR
          </button>
        </model-viewer>
      </div>
    `;
  }
}

customElements.define('model-element', ModelElement);
