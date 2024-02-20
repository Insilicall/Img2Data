class Img2Data {
    constructor(id) {
        this._id = id;
        this._path = './node_modules/@insilicall/img-2-data/index.html';
    }

    setPath(path) {
        this._path = path;
    }

    load() {
        const div = document.getElementById(this._id);
        const iframe = document.createElement('iframe');
        iframe.src = this._path;
        iframe.width = '100%';
        iframe.height = '100%';
        div.appendChild(iframe);
    }
}