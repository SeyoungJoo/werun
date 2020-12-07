const initEventModal =() => {

  const modals = document.getElementsByClassName("event-modal");
  const clicks = document.getElementsByClassName("event-click");
  const closes = document.getElementsByClassName("modal-close");
  const funcs = [];

  function Modal(num) {
    return function() {
      clicks[num].onclick =  function() {
        modals[num].style.display = "block";
        console.log(num);
      };
      closes[num].onclick = function() {
        modals[num].style.display = "none";
      };
    };
  };

  for(var i = 0; i < clicks.length; i++) {
    funcs[i] = Modal(i);
  };

  for(var j = 0; j < clicks.length; j++) {
    funcs[j]();
  };

  window.onclick = function(event) {
    if (event.target.className == "event-modal") {
        event.target.style.display = "none";
    };
  };

};

export { initEventModal };
