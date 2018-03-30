import React from 'react';

class MenuShow extends React.Component {
  constructor(props) {
    super(props);
  }
  
  componentDidMount() {
    this.props.fetchMenu(this.props.match.params.businessId)
  }

  render () {
    return (
      <div>

      </div>
    );
  }
}

export default MenuShow;
