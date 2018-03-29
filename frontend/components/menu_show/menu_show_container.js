import { connect } from 'react-redux';

import { fetchMenu, createMenu } from '../../actions/menu_actions';
import MenuShow from './menu_show';

const mapStateToProps = ({ entities }) => {
  console.log(entities);
  const { menu } = entities;
  return {
    menu,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchMenu: id => dispatch(fetchMenu(id)),
  createMenu: menu => dispatch(createMenu(menu)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(MenuShow);
