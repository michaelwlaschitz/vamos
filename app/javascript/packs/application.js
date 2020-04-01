import "bootstrap";

import { initAutocompleteLocation, initAutocompleteProjectAddress, initAutocompleteNgoAddress } from '../plugins/init_autocomplete';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { addActiveClass } from '../functions/filter_choice';

import { initMapModal } from "../functions/map_modal.js"
import { initMapbox } from '../plugins/init_mapbox';

import { replaceDistances } from '../functions/distance';

import { logoFileName } from '../functions/fetch_logo_file_name';

import { toggleTeamForm } from '../functions/team_form';

initAutocompleteLocation();
initAutocompleteProjectAddress();
initAutocompleteNgoAddress();

initMapbox();
initMapModal();

replaceDistances();
addActiveClass();

logoFileName();

toggleTeamForm();

