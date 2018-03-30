import { connect } from 'react-redux';

import { createMenu, fetchMenu } from '../../actions/menu_actions';
// import testMenu from '../../../testData.json';
import MenuShow from './menu_show';

const mapStateToProps = state => (
  state
);

const mapDispatchToProps = dispatch => ({
  createMenu: menu => dispatch(createMenu(menu)),
  fetchMenu: id => dispatch(fetchMenu(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(MenuShow);
