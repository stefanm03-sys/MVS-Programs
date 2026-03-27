// This is a JS comment
const btn1 = document.getElementById("btn1"); // This selects the button element with the id "btn1" and assigns it to the variable btn1
if (btn1) {
    btn1.addEventListener("click", () => { // This adds an event listener to the button that listens for a "click" event from the mouse, and executes the function when the button is clicked
        btn1.textContent = "Clicked!"; // This changes the text content of the button to "Clicked!" when it is clicked using bt1. for the variable and textContent to change the text
        alert("You clicked the button!"); // A defaut page alert that can pop up
    });
}



