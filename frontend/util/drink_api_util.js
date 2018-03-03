import axios from 'axios';

const url = 'http://localhost:3000';

export const fetchDrinks = menuId => (
  axios({
    method: 'GET',
    url: `${url}/api/menus/${menuId}/drinks`,
  })
);

export const fetchDrink = id => (
  axios({
    method: 'GET',
    url: `${url}/api/drinks/${id}`,
  })
);

export const createDrink = drink => (
  axios({
    method: 'POST',
    url: `${url}/api/drinks`,
    data: { drink },
  })
);
