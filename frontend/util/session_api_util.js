import axios from 'axios';

const url = 'http://localhost:3000';

export const login = user => (
  axios({
    method: 'POST',
    url: `${url}/api/session`,
    data: { user },
  })
);

export const signup = user => (
  axios({
    method: 'POST',
    url: `${url}/api/user`,
    data: { user },
  })
);

export const logout = () => (
  axios({
    method: 'DELETE',
    url: `${url}/api/session`,
  })
);
