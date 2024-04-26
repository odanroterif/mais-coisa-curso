const buttom = document.querySelector('.botao-busca');
const city_name = document.querySelector('.cidade');
const weather = document.querySelector('.temp');
const search = document.querySelector('.input-cidade');
const preview = document.querySelector('.texto-previsao');
const key = "e918ebdfc275fc079461d48250a24c59";


buttom.addEventListener('click',search_city);


async function search_city() 
{    
    const city = search.value;
    const dates = await fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${key}&lang=pt_br&units=metric`).then(resward => resward.json());
    let condition = dates.weather[0].description;

    city_name.textContent = "tempo em " + dates.name;
    weather.textContent = (dates.main.temp).toFixed(0) + " °C";
    preview.textContent = "tempo: " + dates.weather[0].description;
}