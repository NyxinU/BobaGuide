import React from 'react';

class StoreShow extends React.Component {
  constructor(props) {
    super(props);
  }
  
  componentDidMount() {
    this.props.fetchStore(this.props.match.params.businessId)
  }

  render () {
    return (
      <div>

      </div>
    );
  }
}

export default StoreShow;
