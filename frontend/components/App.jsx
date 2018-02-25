import React from 'react';
import {
  Route,
  Switch,
} from 'react-router-dom';

import HeaderContainer from './header/Header_container';
import SignUpFormContainer from './session_form/Signup_form_container';
import LogInFormContainer from './session_form/Login_form_container';

const App = () => (
  <div>
    <h1>Boba Guide</h1>
    <HeaderContainer />
    <Switch>
      <Route exact path="/login" component={LogInFormContainer} />
      <Route exact path="/signup" component={SignUpFormContainer} />
    </Switch>
  </div>
);

export default App;
