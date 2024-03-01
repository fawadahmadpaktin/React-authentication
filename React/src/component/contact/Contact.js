import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link} from 'react-router-dom';


  function Contact() {
    return (
      <div>
      <div className='bg-image'>
      <div className='inner'>
      <div class="container ">

      <div class="contents">
       <div className='spans'> 
        <p>Contact >   <Link className="link-color" to="/">Home</Link> </p>
        </div>

      </div>
    </div>
    </div>
</div>

      <div className='container '> 
              <div className='row mt-5'>
                  <div className='col-md-6'>
                      <h3>Contact Us</h3>

                  </div>
                  <div className='col-md-6' ></div>
              </div>
      </div>

      </div>
      
    )
  }
export default Contact
