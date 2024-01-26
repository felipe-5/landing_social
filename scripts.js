
var inputPais = document.getElementById("inputPais");

fetch("paises.php")
    .then(response => {
        if (!response.ok) {
            throw new Error("Error en la solicitud");
        }
        return response.json();
    })
    .then(paises => {

        for (var i = 0; i < paises.length; i++) {
            var option = document.createElement("option");
            option.text = paises[i].pais;
            option.value = paises[i].id;
            inputPais.add(option);
            console.log(paises[i].pais)
        }
    })
    .catch(error => console.error("Error:", error));

var miFormulario = document.getElementById("form-social");

miFormulario.addEventListener("submit", function (event) {

    event.preventDefault();

    fetch("guardar.php", {
        method: "POST",
        body: new FormData(miFormulario)
    })
        .then(response => response.json())
        .then(data => {
            if (data.hasOwnProperty('success')) {
                miFormulario.reset();
                var myModal = new bootstrap.Modal(document.getElementById("exitoModal"));
                myModal.show();
                return;
            }
            var myModalError = new bootstrap.Modal(document.getElementById("Modalerror"));
            myModalError.show();
        })
        .catch(error => console.error("Error:", error));
});