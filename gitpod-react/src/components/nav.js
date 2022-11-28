import React, { Component } from 'react';


export default class Nav extends Component {
  render() {
    return (
      <nav>
          <div className="nav-wrapper">
            <a href="/" className="brand-logo">Gitpod</a>
            <ul id="nav-mobile" className="right hide-on-med-and-down">
              <li><a href="/">HOME</a></li>
            </ul>
          </div>
        </nav>
    );
  }
}
