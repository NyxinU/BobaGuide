import { connect } from 'react-redux';

import { createMenu } from '../../actions/menu_actions';
import testMenu from '../../../testData.json';
import MenuShow from './menu_show';

const mapStateToProps = () => ({
  testMenu,
});

const mapDispatchToProps = dispatch => ({
  createMenu: menu => dispatch(createMenu(menu)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(MenuShow);
