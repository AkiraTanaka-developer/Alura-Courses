import { validarInput } from "./validar.js";
import { validarInput } from "./validar.js";

window.onload = () => {
    const inputs = document.querySelectorAll("input");

    inputs.forEach(input =>{
        input.addEventListener('input', () => {
                validarInput(input);
        });
    });
};