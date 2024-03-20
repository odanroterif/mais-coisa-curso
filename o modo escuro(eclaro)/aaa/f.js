const day  = document.querySelector('#day_button');
const night  = document.querySelector('#night_button');
const mob = document.querySelector('body');


day.addEventListener('click', day_screen);
night.addEventListener('click', night_screen);


function day_screen()
{
    mob.className = 'DAY';
}

function  night_screen()
{
    mob.className = 'NIGHT';
}

