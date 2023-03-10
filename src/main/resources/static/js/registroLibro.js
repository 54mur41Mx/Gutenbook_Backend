//import Swal from 'sweetalert2/dist/sweetalert2.js'
//Declaracion de libros y asociacion con html
let titulo = document.getElementById("titulo");
let img =  document.getElementById("img");
let autor = document.getElementById("autor");
let precio = document.getElementById("precio");
let mainProds = document.getElementById("mainProductos");


//mensajes validación//

let messageTitulo = document.getElementById("messageTitulo");
let messageImagen = document.getElementById("messageImagen");
let messageAutor = document.getElementById("messageAutor");
let messagePrecio = document.getElementById("messagePrecio");
let Exito = document.querySelector("#Exito");

//const submit = document.getElementsByClassName('form-contact')[0];


let idTimeout;
let idTimeout2;
let cantidad =0;
let datos = []; // new Array();

let btnEnviar = document.getElementById("btnEnviar");
let btnReset = document.getElementById("btnReset");

//Expresiones para validar//

let regexTitulo = /^(?!\s*$).{0,700}$/
let regexURL = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[\-;:&=\+\$,\w]+@)?[A-Za-z0-9\.\-]+|(?:www\.|[\-;:&=\+\$,\w]+@)[A-Za-z0-9\.\-]+)((?:\/[\+~%\/\.\w\-_]*)?\??(?:[\-\+=&;%@\.\w_]*)#?(?:[\.\!\/\\\w]*))?)/
let regexAutor = /^(?!\s*$).{0,700}$/
let regexPrecio = /^\d+(,\d{3})*(\.\d{1,2})?$/;

//funciones para validar//

/*function validarTitulo(){
    return (regexTitulo.test(titulo.value))
}//validarTituloLibro*/

function validarTitulo(){
    return (regexTitulo.test(titulo.value))
}//ValidarURL

//valida que la URL sea valida
function validarURL(){
    return (regexURL.test(img.value))
}//ValidarURL

//valida que el nombre del autor sea valido
function validarAutor(){
    return (regexAutor.test(autor.value))
}//validarautor

//validar que el precio sea valido
function validarPrecio(){
    return (regexPrecio.test(precio.value))
}//validar precio

//funciones para validar//


btnEnviar.addEventListener("click", async function(event){
    event.preventDefault();
    clearTimeout(idTimeout);

    if ((! validarTitulo()) || (! validarURL()) || (! validarAutor()) || (! validarPrecio())) {
        let lista = "<ul>";
        if (! validarTitulo()){
            messageTitulo.style.display = "block"
            titulo.style.border = "red thin solid"
        } //validarNombre
        if (! validarURL()){
            messageImagen.style.display = "block"
            img.style.border = "red thin solid"
        }//validarMensaje

        if (! validarAutor()){
            messageAutor.style.display = "block"
            autor.style.border = "red thin solid"
        }//validarEmail

        if (! validarPrecio()){
            messagePrecio.style.display = "block"
            precio.style.border = "red thin solid"
        }
        
        idTimeout = setTimeout(function(){
         
            messageTitulo.style.display = "none"
            titulo.style.border = ""
            messageImagen.style.display = "none"
            img.style.border = ""
            messageAutor.style.display = "none"
            autor.style.border = ""
            messagePrecio.style.display = "none"  
            precio.style.border = ""     
        }, 4000);

        return false;
    } else{
        Swal.fire(
            'Libro registrado!',
            'haz clic para salir!',
            'success'
          )
    }
   /*     
    let elemento = `{
        "name":"${titulo.value}",
        "img":"${img.value}",
        "description":"${autor.value}",
        "price":${parseFloat(precio.value)}
      }`;
    console.log(elemento);
    datos.push(JSON.parse(elemento));
    localStorage.setItem("datos", JSON.stringify(datos));
    */
    
    
		const response = await fetch('/api/libros/', {
			method: 'POST',
			headers: {
			  'Accept': 'application/json',
			  'Content-Type': 'application/json'
			},
			body: `{
			   	"titulo": "${titulo.value}",
				   "autor": "",
				   "url": "${img.value}",
				   "genero": "",
				   "anioPublicacion": 0,
		           "precio": "${precio.value}",
				   "description": "${autor.value}",
				   "editorial":""
			  }`,
			});
			
			response.json().then(data => {
			  console.log(data);
			});
   



    titulo.value = "";
    img.value = "";
    autor.value = "";
    precio.value = "";
    titulo.focus();

});



// BLUR
titulo.addEventListener("blur", function (event){
    event.preventDefault();
    // txtNombre.value = txtNombre.value.trim();
    event.target.value = event.target.value.trim();
});

img.addEventListener("blur", function (event){
    event.preventDefault();
    // txtNumber.value = txtNumber.value.trim();
    event.target.value = event.target.value.trim();
});

autor.addEventListener("blur", function (event){
    event.preventDefault();
    // txtNumber.value = txtNumber.value.trim();
    event.target.value = event.target.value.trim();
});

precio.addEventListener("blur", function (event){
    event.preventDefault();
    // txtNumber.value = txtNumber.value.trim();
    event.target.value = event.target.value.trim();
});

    
