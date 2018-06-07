import React from 'react';
import styled from 'styled-components';

const StyledStar = styled.i`
  color: black;
`;

const Star = ({ num }) => (
  <StyledStar className="fas fa-star" />
);

// class Star extends React.Component {
//   render() {
//     return (
//       <StyledStar className="fas fa-star"></StyledStar>
//     )
//   }
// };

export default Star;
