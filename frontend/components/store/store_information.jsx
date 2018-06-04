import React from 'react';

const StoreInformation = ({ store }) => {
  return (
    <div>
      <h1>{store.name}</h1>
      <div>{store.rating}</div>
      <span>{store.review_count}</span>
      <span>{store.price}</span>
      <img src={`https://maps.googleapis.com/maps/api/staticmap?center=${store.coordinates.latitude},${store.coordinates.longitude}&key=AIzaSyBPnYDruSgiw9QVlpsBgqrc40-k7PjOWJU`} alt="" />
      <address>
        {`${store.location.display_address[0]}`}
        <br />
        {`${store.location.display_address[1]}`}
      </address>
      <span>{store.cross_street}</span>
      <div>images go here</div>
      
    </div>
  );
};

export default StoreInformation;
