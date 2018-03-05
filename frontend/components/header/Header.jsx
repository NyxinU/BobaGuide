import React from 'react';
import { Link } from 'react-router-dom';

const sessionLinks = () => (
  <nav className="header">
    <h1 className="logo">Boba Guide</h1>
    <Link className="header-btn login" to="/login">Login</Link>
    <Link className="header-btn signup" to="/signup">Sign up!</Link>
  </nav>
);

const personalGreeting = (currentUser, logout) => (
  <nav className="header">
    <h2 className="header-name">Hi, {currentUser.data.first_name}!</h2>
    <button className="header-btn login" onClick={logout}>Log Out</button>
  </nav>
);

const Header = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default Header;
