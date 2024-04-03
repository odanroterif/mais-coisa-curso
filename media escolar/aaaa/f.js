const student = document.querySelector('#name');
const note_one = document.querySelector('#first');
const note_two = document.querySelector('#second');
const note_three = document.querySelector('#three');
const THEbutton = document.querySelector('#calculate');
const answer = document.querySelector('#result');
const indicative = document.querySelector('#indicate');


THEbutton.addEventListener('click',calculator);


function calculator() 
{
    let final_result = (Number(note_one.value)  + Number(note_two.value) + Number(note_three.value))/3;
    
    
    if (final_result >= 5) 
    {    
        answer.textContent = student.value + " sua média é "+ final_result.toFixed(1) + " você esta aprovado"; 
        indicative.className = 'win';
    }
    else
    {
        answer.textContent = student.value + " sua média é "+ final_result.toFixed(1) + " você esta na recuperação"; 
        indicative.className = 'negate';
    }
}