import axios from 'axios';

const url = 'http://localhost:3000';

export const createMenu = menu => (
  axios({
    method: 'POST',
    url: `${url}/api/menus`,
    data: { menu },
  })
);

export const fetchMenu = id => (
  axios({
    method: 'GET',
    url: `${url}/api/menus/${id}`,
  })
);

export default createMenu;
