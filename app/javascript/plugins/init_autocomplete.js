import places from 'places.js';

const initAutocompleteLocation = () => {
  const addressInput = document.getElementById('address');
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


export { initAutocompleteLocation, initAutocompleteProjectAddress, initAutocompleteNgoAddress };
