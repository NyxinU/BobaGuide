import React from 'react';
import { Redirect } from 'react-router';

import StoreInformation from './store_information';

class StoreShow extends React.Component {
  componentDidMount() {
    this.props.fetchStore(this.props.match.params.businessId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.match.params.businessId !== this.props.match.params.businessId) {
      this.props.fetchStore(this.props.match.params.businessId);
    }
    if (this.props.match.params.businessId !== Object.keys(this.props.store)[0]) {
      console.log(this.props.match.params.businessId);
      console.log(Object.keys(this.props.store)[0]);
    }
  }

  render() {
    console.log(this.props);
    if (this.props.store === undefined) {
      return (
        <div />
      );
    }
    return (
      <div>
        <StoreInformation store={this.props.store} />
      </div>
    );
  }
}

export default StoreShow;
