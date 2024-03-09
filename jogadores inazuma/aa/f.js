const haizaki = document.querySelector('#haizaki');
const ibuki = document.querySelector('#ibuki');
const matatagi = document.querySelector('#matatagi');
const kariya = document.querySelector('#kariya');
const sakurazaki = document.querySelector('#sakurazaki');
const substitute = document.querySelector('#substitute');

haizaki.addEventListener('click', seishou);
ibuki.addEventListener('click', japan);
matatagi.addEventListener('click', earth);
kariya.addEventListener('click', fifth);
sakurazaki.addEventListener('click', nagumohara);

function seishou() 
{
    substitute.src = 'imagens/haizaki.webp';
}

function japan() 
{
    substitute.src = 'imagens/ibuki.jpg';
}

function earth() 
{
    substitute.src = 'imagens/matatagi.jpg';
}

function fifth() 
{
    substitute.src = 'imagens/karigod.jpg';
}

function nagumohara() 
{
    substitute.src = 'imagens/sakurazaki.jpg';
}