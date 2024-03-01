import React, { Component } from 'react'

import { BrowserRouter as Router, Route, Routes  , Link} from 'react-router-dom';

  function ForgotPassword() {
    return (
      <div>
      <div className='bg-image'>
      <div className='inner'>
      <div class="container">

      <div class="contents">
       <div className='spans'> 
        <p> Forgot Password >   <Link className="link-color" to="/">Home</Link> </p>
        </div>

      </div>
    </div>
    </div>
</div>
<div className="register-photo mt-4 mb-5">

        <div className="form-container">
        <div className="image-holder"></div>
            <form>
                <h2 className="text-center"><strong>Forgot Password </strong></h2>
                <div className="form-group"><input className="form-control" type="email" name="email" placeholder="Enter Your Email" /></div>
                <div className="form-group "><button className="btn-primary btn-block">Send</button></div>
                <hr />
                  <Link to="/Login" className="already mt-3" >Back to  Login</Link>
			</form>
    
        </div>
    </div>

      </div>
      );
  }
export default ForgotPassword
