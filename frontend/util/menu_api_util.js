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
    url: `https://api.yelp.com/v3/businesses/${id}`,
  })
);
