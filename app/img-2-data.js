export default class Img2Data {
    constructor(id) {
        this._id = id;
    }

    load() {
        const div = document.getElementById(this._id);
        const iframe = document.createElement('iframe');
        iframe.src = 'index.html';
        iframe.width = '100%';
        iframe.height = '100%';
        div.appendChild(iframe);
    }
}