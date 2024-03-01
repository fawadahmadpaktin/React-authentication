
import React, { Component } from 'react'
import { Link  , Navigate} from 'react-router-dom';
import axios from 'axios';
export class Login extends Component {
  state = {
    email: '',
    password : '',
    message:'' ,
   
  } 
    formSubmit = (e)=>{
        e.preventDefault();
          const data = {
            email:this.state.email,
            password:this.state.password,
          }

           axios.post('/Login' , data) 
            .then((response) => {

             localStorage.setItem('token' , response.data.token);
               this.setState({
                loggedIn:true
           });
            
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
      return <Navigate replace to="/Profile" / >
   
    }


   

    return (

      
      <div>
      
      <div className='bg-image'>
      <div className='inner'>
      <div class="container">

      <div class="contents">
       <div className='spans'> 
        <p> Login |  <Link className="link-color" to="/">Home {this.state.loggedIn} </Link> </p>
        </div>

      </div>
    </div>
    </div>
</div>
<div className="register-photo mt-4 mb-5">

        <div className="form-container">
        <div className="image-holder"></div>

            <form onSubmit={this.formSubmit}>
          
                <h2 className="text-center"><strong>Login </strong></h2>
                {error}
                <div className="form-group"><input   onChange={(e)=>{this.setState({email:e.target.value})}}   className="form-control" type="email" name="email" placeholder="Email" /></div>
                <div className="form-group"><input  onChange={(e)=>{this.setState({password:e.target.value})}} className="form-control"  type="password" name="password" placeholder="Password" /></div>
                <div className='col-md-12'>
                  <div className="form-group "><button  type='submit' className="btn btn-primary btn-block">Login</button></div>
                </div>
                <Link to="/ForgotPassword" className="already mt-3" >Forgot Password? </Link>
                <hr />
                  <Link to="/Register" className="already mt-3" >Don't have an account? Sign Up.</Link>
			</form>
        </div>
    </div>
 </div>
     
    );
  }
}

export default Login
