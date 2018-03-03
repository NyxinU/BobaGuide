import axios from 'axios';

const url = 'http://localhost:3000';

export const fetchReviews = drinkId => (
  axios({
    method: 'GET',
    url: `${url}/api/drinks/${drinkId}/reviews`,
  })
);

export const fetchReview = id => (
  axios({
    method: 'GET',
    url: `${url}/api/reviews/${id}`,
  })
);

export const createReview = review => (
  axios({
    method: 'POST',
    url: `${url}/api/reviews`,
    data: { review },
  })
);

export const updateReview = review => (
  axios({
    method: 'PATCH',
    url: `${url}/api/reviews/${review.id}`,
    data: { review },
  })
);

export const destroyReview = id => (
  axios({
    method: 'DELETE',
    url: `${url}/api/reviews/${id}`,
  })
);
