const toggleTeamForm = () => {
  const teamButton = document.getElementById('show-team-form')
  const existingTeams = document.querySelectorAll('.existing-teams')
  const teamForm = document.getElementById('team-form-display')
  teamButton.addEventListener('click', () => {
    teamForm.classList.remove("d-none")
    existingTeams.forEach(item => item.classList.add("d-none"));
  });
}

export { toggleTeamForm }

