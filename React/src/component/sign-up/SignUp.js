import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link , Navigate} from 'react-router-dom';
import '../../asset/style.css';
import axios from 'axios';

class SignUp extends Component {
  state = {
    name:'',
    email:'',
    password:'',
    password_confirmation:'',
    message:''
  }

  formSubmit = (e)=>{
    e.preventDefault();
      const data = {
        name:this.state.name,
        email:this.state.email,
        password:this.state.password,
        password_confirmation:this.state.password_confirmation,
      }
       axios.post('/Register' , data) 
      .then((response ) => {
        localStorage.setItem('token' , response.data.token);
         this.setState({loggedIn : true});
          // this.props.setUser(response.data.user);
          
         
    }).catch((err) => {
      this.setState({message:err.response.data.message})
    });
}

  render() {
    
    let error="";
	  if(this.state.message){
         error=(
              <div>
            <div class="mb-1" style={{"color": "red"}}  role="alert" >
                 {this.state.message}
              </div>       
              </div>
         )
    }

    if(this.state.loggedIn){
      return <Navigate to="/Profile" ></Navigate>
    }
    return (

       
      <div>
       
      <div className='bg-image'>
      <div className='inner'>
      <div class="container">

      <div class="contents">
       <div className='spans'> 
        <p> Sign Up  >   <Link className="link-color" to="/">Home</Link> </p>
        </div>

      </div>
    </div>
    </div>
    </div>


<div className="register-photo mb-4 mt-4">
      <div className="form-container">
          <form onSubmit={this.formSubmit}>
              <h2 className="text-center"><strong>Create</strong> an account.</h2>
              {error}
              <div className="form-group"><input name="name"  onChange={(e)=> {this.setState({name:e.target.value})}}  className="form-control" type="text" placeholder="Name" /></div>
              <div className="form-group"><input name="email"  onChange={(e)=> {this.setState({email:e.target.value})}}  className="form-control" type="email"  placeholder="Email" /></div>
              <div className="form-group"><input name="password"  onChange={(e)=> {this.setState({password:e.target.value})}} className="form-control" type="password" placeholder="Password" /></div>
              <div className="form-group"><input name="password_confirmation"  onChange={(e)=> {this.setState({password_confirmation:e.target.value})}}  className="form-control" type="password"  placeholder="Confirm" /></div>
              <div className="form-group "><button className="btn-primary btn-block">Sign Up</button></div>
              <Link to="/Login" className="already mt-3" href="#">You already have an account? Login here.</Link>
    </form>
    <div className="image-holder"></div>
      </div>
  </div>

</div>

        );
  }
}
export default SignUp
