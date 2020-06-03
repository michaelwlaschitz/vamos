const submitEnter = () => {
  const messageBox = document.getElementById("message_body");
  const messageForm = document.getElementById("new_message");
  if (messageBox) {
    messageBox.addEventListener("keypress", (e) => {
      if (e.which == 13 && !e.shiftKey){
        messageForm.submit();
        window.scrollTo(0,document.body.scrollHeight);
      }
    })
  }
}

export { submitEnter }
