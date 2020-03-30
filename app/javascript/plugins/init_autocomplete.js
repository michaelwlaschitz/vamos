import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelectorAll('#address, #project_address, #ngo_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
