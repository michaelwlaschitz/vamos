import places from 'places.js';

const initAutocompleteLocation = () => {
  const addressInput = document.getElementById('address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocompleteFilterMobile = () => {
  const addressInputMobile = document.getElementById('filter-mobile-location');
  if (addressInputMobile) {
    places({ container: addressInputMobile });
  }
};

const initAutocompleteFilterDesktop = () => {
  const addressInputDesktop = document.getElementById('filter-desktop-location');
  if (addressInputDesktop) {
    places({ container: addressInputDesktop });
  }
};

const initAutocompleteProjectAddress = () => {
  const addressInputProject = document.getElementById('project_address');
  if (addressInputProject) {
    places({ container: addressInputProject });
  }
};

const initAutocompleteNgoAddress = () => {
  const addressInputNgo = document.getElementById('ngo_address');
  if (addressInputNgo) {
    places({ container: addressInputNgo });
  }
};


export { initAutocompleteLocation, initAutocompleteProjectAddress, initAutocompleteNgoAddress, initAutocompleteFilterDesktop, initAutocompleteFilterMobile };
