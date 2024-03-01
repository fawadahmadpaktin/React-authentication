import React, { Component } from 'react'
import image from '../../asset/image/fav.jpg';
import Nav from '../nav/Navbar';
import Section from '../section/Section';
import Login from '../login/Login';
import Register from '../sign-up/SignUp';
import About from '../about/About';
import Contact from '../contact/Contact';
import ForgotPassword from '../forgot-password/ForgotPassword';
import Profile from '../profile/Profile';
import axios from 'axios';
import { BrowserRouter as Router, Route, Routes  } from 'react-router-dom';

export class Header extends Component {

    state ={
        user:{}
    }

    componentDidMount(){
        axios.get('/user') 
        .then((response ) => {
            this.setUser(response.data);
      }).catch((err) => {
        
      });
    }

    setUser = (user)=> {
            this.setState({user:user});
    }

  render() {
     
   
   
    return(
        <Router>
        <div>
        <Nav user ={this.state.user} setUser={this.setUser}  />
        
            <Routes>
            <Route exact path="/" Component={Section}  />            
            <Route exact path="/About" Component={About}  />            
            <Route exact path="/Contact" Component={Contact}  />            
            <Route exact path="/Login"  setUser={this.setUser} Component={   ()=> <Login user = {this.state.user}  /> }  />            
            <Route exact path="/Register"  setUser={this.setUser}  Component={   ()=> <Register user= {this.state.user}  /> }  />            
            <Route exact path="/Profile" Component={   ()=> <Profile user= {this.state.user}  /> }  />            
            <Route exact path="/ForgotPassword" Component={ForgotPassword}  />     
                   
            </Routes>
        </div>
        </Router>
      
    );
}

};
export default Header;
