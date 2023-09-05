
self.addEventListener('message', function (e) {
    var f = e.data;
    var reader = new FileReader();

    //reader.onprogress = updateProgress;
    reader.onload = (function (theFile) {
        return function (e) {
            //$scope.dtimg[contador].urlimg = e.target.result;
            //$scope.dtimg[contador].imgvisible = true;
            var obj = {
                event: "onload",
                data: {
                    //id: e.target.id,
                    urlimg: e.target.result,
                    nbarchivo: f.name.split('.')[0],
                    //extencion: '',
                    //imgvisible: true,
                    message: "Carga del archivo terminada"
                }
            }

            self.postMessage(JSON.stringify(obj))
        }
    })(f);

    reader.onloadstart = function (e) {
        var obj = {
            event: "onloadstart",
            data: {
                id: e.target.id,
                urlimg: '',
                nbarchivo: f.name.split('.')[0],
                ext: f.name.split('.')[1], //f.type.split('/')[1],
                //imgvisible: false,
                porcentaje: 0,
                server: false
            },
            message: "Carga del archivo comienza"
        };

        self.postMessage(JSON.stringify(obj))
    };

    //var blob = f.slice(0, 2000); particionar archivo
    reader.readAsDataURL(f);
}, false);