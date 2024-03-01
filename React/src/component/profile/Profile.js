import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link  , Navigate} from 'react-router-dom';
export class Profile extends Component {
  render() {
    let name ;
    let email;

    if (this.props.user) {
        name = this.props.user.name;
        email = this.props.user.email;
    }

    if(!localStorage.getItem('token')){
        return <Navigate to={'/Login'} />
   }
    
    return (
     
        <div>

        <h3 className='text-center mt-3' >User Profile </h3>
      <div className="container mt-4 mb-4">
    
      <div className="row d-flex justify-content-center">
          
          <div className="col-md-7">
              
              <div className="card p-3 py-4">
                  
                  <div className="text-center">
                      <img src={require("../../asset/image/User.png")} width="100" className="rounded-circle" />
                  </div>
                  
                  <div className="text-center mt-3">
                      <span className="bg-secondary p-1 px-4 rounded text-white">Profile</span>
                      <h5 className="mt-2 mb-0">Name {name} </h5>
                      <h6 className="mt-2 mb-0">Email {email}  </h6>
                      <span>Programmer</span>
                      
                      <div className="px-4 mt-1">
                          <p className="fonts">My Name is {name} and your email is {email} </p>
                      </div>
                      
                      <div className="buttons">
                          
                          <button className="btn button  px-4">Edit Profile </button>
                          <button to="/" className="btn button  px-4 ms-3">Home </button>
                      </div>
                      
                  </div>
              
              </div>
              
          </div>
          
      </div>
      
  </div>
</div>
    );
  }
}

export default Profile
