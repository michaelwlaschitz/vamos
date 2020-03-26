const addActiveClass = () => {
  const button = document.querySelectorAll('.button');
  if (button) {
    button.forEach((item) => {
      item.addEventListener('click', (event) => {
        event.currentTarget.classList.toggle("active");
      });

      const id = item.attributes.for.value;
      const input = document.getElementById(id);
      item.checked = false;
    });
  }
};

export { addActiveClass };
