const initLoginModal = () => {

const button = document.getElementById("sign-in-button")
const modal = document.querySelector(".modal")

console.log(button)
console.log(modal)

button.addEventListener("click", (event) => {
  console.log(event)
  modal.classList.remove('show');
  modal.classList.add('hide');
  });
}

export { initLoginModal }
