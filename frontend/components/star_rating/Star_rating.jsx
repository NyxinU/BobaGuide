import React from 'react';
import Star from './Star';

const StarRating = ({ rating }) => {
  const arrRating = [];

  while (arrRating.length < 5) {
    arrRating.push(rating);
    rating--;
  }
  console.log(arrRating)
  return (
    <ul>
      
    </ul>
  );
};

export default StarRating;
