const mapBtn = () => {
  const mapOpen = document.querySelector('.runner-cards');

  const mapToggleBtn = document.querySelector('.runner-toggle');

  mapToggleBtn.addEventListener('click', ()=> {
    mapOpen.classList.toggle('open');
  })
}

export { mapBtn };
