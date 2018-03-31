import React from 'react';

const StoreInformation = ({ store }) => {
  console.log(store)
  return (
    <div>
      <h1>{store.name}</h1>
      <div>{store.rating}</div>
      <span>{store.review_count}</span>
      <span>{store.price}</span>
      <div>replace this with a static map</div>
      <address>
        {`${store.location.display_address[0]}`}
        <br />
        {`${store.location.display_address[1]}`}
      </address>
    </div>
  );
};

export default StoreInformation;
