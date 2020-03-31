const toggleTeamForm = () => {
  const teamButton = document.getElementById('show-team-form')
  const teamForm = document.getElementById('team-form-display')
  teamButton.addEventListener('click', () => {
    teamForm.classList.remove("d-none")
  })
}

export { toggleTeamForm }

