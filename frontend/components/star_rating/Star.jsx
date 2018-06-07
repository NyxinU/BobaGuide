import React from 'react';

const Star = ({ num }) => {
  let star = <li />;

  if (num >= 0.8) {
    star = <li><i className="fas fa-star"></i></li>;
  } else if (num >= 0.3) {
    star = <li><i className="fas fa-star-half-o"></i></li>;
  } else {
    star = <li><i className="fas fa-star-o"></i></li>;
  }

  return (
    star
  );
};

export default Star;
