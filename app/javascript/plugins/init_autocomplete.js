import places from 'places.js';

const initAutocompleteLocation = () => {
  const addressInput = document.getElementById('address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocompleteFilterMobile = () => {
  const addressInput = document.getElementById('filter-mobile-location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocompleteFilterDesktop = () => {
  const addressInput = document.getElementById('filter-desktop-location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocompleteProjectAddress = () => {
  const addressInput = document.getElementById('project_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocompleteNgoAddress = () => {
  const addressInput = document.getElementById('ngo_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};


export { initAutocompleteLocation, initAutocompleteProjectAddress, initAutocompleteNgoAddress, initAutocompleteFilterDesktop, initAutocompleteFilterMobile };
