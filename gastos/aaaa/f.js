const input_distance = document.querySelector('#distance');
const input_consumer = document.querySelector('#consumer');
const input_price = document.querySelector('#price');
const calculator_button = document.querySelector('#otn');
const result = document.querySelector('#result');


calculator_button.addEventListener('click',calculate);


function calculate() 
{    
    let calculater = (Number(input_distance.value)/Number(input_consumer.value))*Number(input_price.value);
    
    
    result.textContent = `o gasto total para a viagem sera de R$ ${calculater.toFixed(2)}`;
}