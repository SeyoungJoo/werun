const initEventModal = () => {
  // Get the modal
  const modals = document.querySelectorAll(".event-modal");
  modals.forEach((modal) => {
    const eventId = modal.dataset.eventId;
    const btn = document.getElementById(`event-click-${eventId}`);

    if (btn) {
      btn.addEventListener("click", (event) => {
        modal.style.display = "block";
      });
    };

    const close_modal = modal.querySelector(".modal-close");
    if (close_modal) {
        close_modal.onclick = function() {
        modal.style.display = "none";
      };
    };

    // window.onclick = function(event) {
    //   if (event.target == modal) {
    //     modal.style.display = "none";
    //   };
    // };

  });
};

export { initEventModal };
