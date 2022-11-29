import React, { Component } from 'react';
import _ from 'lodash';
import Card from './card';
import axios from 'axios';


export default class MainContainer extends Component {
  render() {
    return (
      <div>
       <div className="row rowimg">
          <div>
            <img src="https://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/237658/02205996e1e84567d4fe3458ef0c01ce895afcf6.png" width="480" height="200"></img>
          </div>
          <img src="https://loremflickr.com/1000/600/cats"/>
        </div>
      </div>
    );
  }
}
