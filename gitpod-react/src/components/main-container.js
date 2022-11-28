import React, { Component } from 'react';
import _ from 'lodash';
import Card from './card';
import axios from 'axios';


export default class MainContainer extends Component {
  render() {
    return (
      <div>
        <div className="row rowimg">
          <img src="https://loremflickr.com/1200/800/mountains"/>
        </div>
      </div>
    );
  }
}
