const init_popup = () => { 
  // Get the modal
  const modals = document.querySelectorAll(".popup-card");
  modals.forEach((modal) => {
    const runnerid = modal.dataset.runnerId;
    const btn = document.getElementById(`runner-click-${runnerid}`);
    if (btn) {
      btn.onclick = function() {
        modal.style.display = "block";
      };
    };

    const close_popup = modal.querySelector(".close");
    if (close_popup) { 
        close_popup.onclick = function() {
        modal.style.display = "none";
      };
    };
  });
};

export { init_popup };
