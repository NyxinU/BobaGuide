import axios from 'axios';

const url = 'http://localhost:3000';

const createMenu = menu => (
  axios({
    method: 'POST',
    url: `${url}/api/menus`,
    data: { menu },
  })
);

export default createMenu;

