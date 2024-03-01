import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link} from 'react-router-dom';

export class Navbar extends Component {
    state = {
        logout:''
   }
   
   logout = () => {
    localStorage.clear();
    this.props.setUser(null);
    }

  render() {
    const Styles = {
        backgroundColor: '#4D849B',
        color:"#fff"
    };

    let buttons;
    let profile;
    if(localStorage.getItem('token')){
        
        buttons = (

            <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
          
           <li class="nav-item">
             <Link to="/Profile"  class="nav-link" >Profile</Link>
           </li>
          
         
         </ul>
         <ul class=" navbar-nav d-flex">
    
         <Link  class="nav-link" onClick={this.logout} >Logout </Link>
         
       
         </ul>

         </div>
       
           
    )
       profile = (
       
        <li class="nav-item">
                <Link to="/Profile" class="nav-link" href="javascript:void(0)">Profile</Link>
        </li>
       )

    }else{
          
            buttons = (
                <div class="collapse navbar-collapse" id="mynavbar">
                            
                 <ul class="navbar-nav me-auto">
                <li class="nav-item">
                  <Link to="/" class="nav-link" href="javascript:void(0)">Home</Link>
                </li>
                <li class="nav-item">
                  <Link to="/About"  class="nav-link" href="javascript:void(0)">About</Link>
                </li>
                <li class="nav-item">
                  <Link to="/Contact" class="nav-link" href="javascript:void(0)">Contact</Link>
                </li>
              
              </ul>
              <ul class=" navbar-nav d-flex">
            
              <Link  class="nav-link" to="/Login" >Login </Link>
              <Link class="nav-link" to="/Register" >Sign Up  </Link>
            
              </ul>

              </div>
            

            )
    }

    return (
    
        <div>
  
        <nav class="navbar navbar-expand-sm navbar-dark "  >
        <div class="container">
          <a class="navbar-brand" href="javascript:void(0)">KaaR</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
         
           {buttons}
          
          
        </div>
      </nav>
      

             </div>
    );
}
}

export default Navbar
