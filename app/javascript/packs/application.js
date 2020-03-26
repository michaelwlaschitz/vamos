import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapModal } from "../functions/map_modal.js"
import { initMapbox } from '../plugins/init_mapbox';



initMapbox();
initMapModal();
