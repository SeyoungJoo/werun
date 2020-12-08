const init_track_popup = () => { 
    // Get the modal
    const modal = document.getElementById("track-popup-card");
    const btn = document.getElementById("track-click");
    if (btn) {
       btn.onclick = function() {
        console.log("hi")
        modal.style.display = "block";
       };
    
      const close_popup = modal.querySelector(".close");
      if (close_popup) { 
          close_popup.onclick = function() {
            console.log("hi")
          modal.style.display = "none";
        };
      };
    };
  };
  
  export { init_track_popup };