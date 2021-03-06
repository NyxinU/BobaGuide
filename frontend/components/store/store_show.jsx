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
  }

  render() {
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
