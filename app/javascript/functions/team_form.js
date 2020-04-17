const toggleTeamForm = () => {
  const teamButton = document.getElementById('show-team-form')
  const existingTeams = document.querySelectorAll('.existing-teams')
  const existingTeamsMessage = document.getElementById('existing-team-application-messsage')
  const newTeamsMessage = document.getElementById('new-team-application-messsage')
  const teamForm = document.getElementById('team-form-display')
  teamButton.addEventListener('click', () => {
    teamForm.classList.remove("d-none")
    existingTeams.forEach(item => item.classList.add("d-none"));
    existingTeamsMessage.classList.add("d-none");
    newTeamsMessage.classList.remove("d-none")
  });
}

export { toggleTeamForm }

