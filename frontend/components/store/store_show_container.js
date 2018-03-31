import { connect } from 'react-redux';

import { createStore, fetchStore } from '../../actions/store_actions';
import StoreShow from './store_show';

const mapStateToProps = (state, ownProps) => {
  const store = state.entities.stores[ownProps.match.params.businessId];
  return {
    store,
  };
};

const mapDispatchToProps = dispatch => ({
  createStore: store => dispatch(createStore(store)),
  fetchStore: id => dispatch(fetchStore(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(StoreShow);
