const initMapModal = () => {
  const trigger = document.querySelector('.open-map-modal')
  if (trigger) {
    const mapModal = document.querySelector(".custom-map-modal")
    trigger.addEventListener("click", () => {
      mapModal.style.top = "0"
    })
    const closeModal = document.querySelector(".close-map-modal")
    closeModal.addEventListener("click", () => {
      mapModal.style.top = "-100vh"
    })
  }
}

export { initMapModal }
