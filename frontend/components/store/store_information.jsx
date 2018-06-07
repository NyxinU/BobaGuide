import React from 'react';
import styled from 'styled-components';

const StarRating = styled.img`

`;

const StarRatingContainer = styled.div`

`;

function starRatingPos(rating) {
  return rating === 0 ? 0 : (rating * -48) + 24;
}

const StoreInformation = ({ store }) => (
  <div>
    <h1>{store.name}</h1>
    <StarRatingContainer>
      <StarRating src="https://s3-media2.fl.yelpcdn.com/assets/srv0/yelp_design_web/9b34e39ccbeb/assets/img/stars/stars.png" top={starRatingPos(store.rating)} />
    </StarRatingContainer>
    <span>{store.review_count}</span>
    <span>{store.price}</span>
    {/* <img src={`https://maps.googleapis.com/maps/api/staticmap?center=${store.coordinates.latitude},${store.coordinates.longitude}&key=AIzaSyBPnYDruSgiw9QVlpsBgqrc40-k7PjOWJU`} alt="" /> */}
    <address>
      {`${store.location.display_address[0]}`}
      <br />
      {`${store.location.display_address[1]}`}
    </address>
    <span>{store.cross_street}</span>
    <div>images go here</div>

  </div>
);

export default StoreInformation;
