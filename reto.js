var piedra = "piedra";
var papel = "papel";
var tijera = "tijera";

var usuario = piedra;
var pc = papel;

if (usuario === piedra && pc === tijera) {
    console.log ("gana el usuario");
} else if (usuario === papel && pc === piedra) {
    console.log ("gana el usuario");
} else if (usuario === tijera && pc === papel) {
    console.log ("gana el usuario again")
} else {
    console.log("gana la pc");
}