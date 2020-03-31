const logoFileName = () => {
  const logoInput = document.querySelector(".logo-input")
  if (logoInput) {

    logoInput.addEventListener("change", event => {
    const container = document.querySelector(".logo-file-name");
    container.innerHTML = "";
    const fileName = event.srcElement.files[0].name;
    container.innerHTML = fileName;
    });
  };
}

export { logoFileName };
