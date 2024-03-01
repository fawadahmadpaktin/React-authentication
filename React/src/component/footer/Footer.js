import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link} from 'react-router-dom';
function Footer() {
    const background = {
        backgroundColor: '#4D849B'
    }
   
    return (
    
    <footer style={background}>
    
        <div className="container custom">
        <div class="row heading"  >
            <div class="col-md-3">

                <h5 className="heading" >Contact US</h5>
                <hr/ >
                <p> contact us through bellow link </p>
                <address>
                    Address: Kabul, Afghanistan
                    <br />
                    Phone: (+93) 77 404 1015
                    <br />
                    Email: fawadahmad955@gmail.com
                </address>
            </div>
            <div className="col-md-3">
                <h5 className="heading" >About Us</h5>
                <hr/ >
                <p>  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also   Read more...  </p>

            </div>
            <div className="col-md-3">
            <h5 className="heading" >Social Media </h5>
            <hr/ >
            <p>Follow us on Social Media!</p>
           
            <ul>
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Instagram</a></li>
                <li><a href="#">Github</a></li>
                <li><a href="#">LinkedIn</a></li>
                <li><a href="#">Google +</a></li>
                <li><a href="#">TikTok</a></li>
            </ul>
            </div>
            <div className="col-md-3">
                <h5 className="heading">Quick Link </h5>
                <hr/ >
                <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#">Sign Up</a></li>
            </ul>
            </div>
        </div>
    </div>
</footer>
        );

}
export default  Footer;