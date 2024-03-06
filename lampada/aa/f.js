const lamp = document.querySelector('#lamp');
const off_button = document.querySelector('#off_button');
const on_button = document.querySelector('#on_button');


on_button.addEventListener('click', on);
off_button.addEventListener('click', off);
lamp.addEventListener('dblclick',broken);

function on() 
{   
    lamp.src = 'imagens/acesa.gif';
}
function off() 
{    
    lamp.src = 'imagens/apagada.gif';
}
function broken() 
{    
    lamp.src = 'imagens/quebrada.jpg';
}