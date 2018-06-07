import React from 'react';
import Star from './Star';

const StarRating = ({ rating }) => {
  const arrRating = [];
  let storeRating = rating;

  while (arrRating.length < 5) {
    arrRating.push(storeRating);
    storeRating -= 1;
  }
  return (
    <ul>
      {arrRating.map((num, i) => <Star key={i} num={num} />)}
    </ul>
  );
};

export default StarRating;
