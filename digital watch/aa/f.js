const hour = document.querySelector('#hours');
const minute = document.querySelector('#minutes');
const second = document.querySelector('#seconds');

setInterval(clock,1000);



function clock()
{
    let day = new Date();
    let actual_hour = day.getHours();
    let actual_minute = day.getMinutes();
    let actual_second = day.getSeconds();
    
    if (actual_hour < 10) 
    {
        actual_hour = '0' + actual_hour;
    } 

    hour.textContent = actual_hour;

    if (actual_minute < 10) 
    {
        actual_minute = '0' + actual_minute;
    }

    minute.textContent = actual_minute;

    if (actual_second < 10) 
    {
        actual_second = '0' + actual_second;
    }
    
    second.textContent = actual_second;
}