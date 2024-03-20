const hour = document.querySelector('#hours');
const minute = document.querySelector('#minutes');
const second = document.querySelector('#seconds');
const picture = document.querySelector('#picture');
const message = document.querySelector('#message');
const DaTe = document.querySelector('#DaTe');
const back = document.querySelector('body');

setInterval(clock,1000);
setInterval(image_switch,1000);
setInterval(background_switch,1000);
var day;
var actual_hour;

function clock()
{
    day = new Date();    
    actual_hour = day.getHours();
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

function image_switch()
{    
    let actual_date = day.getDate();
    let actual_mounth = day.getMonth() + 1;
    let actual_year = day.getFullYear();
    
    
    if (actual_date < 10) 
    {
        DaTe.textContent = '0' + actual_date + '/' + actual_mounth + '/' + actual_year;
    } 
    else 
    {
        DaTe.textContent = actual_date + '/' + '0' + actual_mounth + '/' + actual_year;
    }
    
    if (actual_mounth < 10) 
    {
        DaTe.textContent = actual_date + '/' + '0' + actual_mounth + '/' + actual_year;
    } 
    else 
    {
        DaTe.textContent = actual_date + '/' + '0' + actual_mounth + '/' + actual_year;
    }
    
    
    if(actual_hour > 12 && actual_hour < 18)
    {
        message.textContent = "BOA TARDE";     
        picture.src = 'images/tarde.avif';
    } else if (actual_hour >= 5 && actual_hour <= 12) 
    {
        picture.src = 'images/day.webp';
        message.textContent ="BOM DIA";
    } else 
    {
        picture.src = 'images/noite.jpg';
        message.textContent = "BOA NOITE";
    }
}

function  background_switch() 
{
    
    if(actual_hour > 12 && actual_hour < 18)
    {
        
        back.className = 'afternoon';   
        
        
    } else if (actual_hour >= 5 && actual_hour <= 12) 
    {
        
        back.className = 'day';   
        
    } else 
    {
        back.className = 'night';
    }
    
}
