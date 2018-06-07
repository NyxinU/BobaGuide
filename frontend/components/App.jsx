import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Switch,
} from 'react-router-dom';

import HeaderContainer from './header/Header_container';
import SignUpFormContainer from './session_form/Signup_form_container';
import LogInFormContainer from './session_form/Login_form_container';
import StoreShowContainer from './store/store_show_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <HeaderContainer />
    <Switch>
      <AuthRoute exact path="/login" component={LogInFormContainer} />
      <AuthRoute exact path="/signup" component={SignUpFormContainer} />
      <Route exact path="/biz/:businessId" component={StoreShowContainer} />
    </Switch>
  </div>
);

export default App;
