import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link} from 'react-router-dom';
function Section () {
    return (
       <div className='wrap'>
       <div className='bg'>
       <div class="container ">

       <div class="content">
        <div className='span'> 
         <h1>National Computer Services</h1>
         <p className='mb-4' >Enjoy our best services</p>
         <Link  className="button" to="/Login">LogIn</Link>
         <Link className="button" to="/Register" >Sign Up </Link>
         </div>

       </div>
     </div>
     </div>
       </div>

    )
  }
export default Section
