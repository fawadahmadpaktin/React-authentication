import React, { Component } from 'react'
import { BrowserRouter as Router, Route, Routes  , Link} from 'react-router-dom';

function About() {
    return (
        <div>
       
        <div className='bg-image'>
        <div className='inner'>
        <div class="container ">
 
        <div class="contents">
         <div className='spans'> 
          <p>About >   <Link className="link-color" to="/">Home</Link> </p>
          </div>
 
        </div>
      </div>
      </div>
      </div>


        <div className='container '> 
                <div className='row mt-5'>
                    <div className='col-md-6'>
                        <h3>About Us</h3>
                        <p>  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
                    </div>
                    <div className='col-md-6' ></div>
                </div>
        </div>

        </div>
        
    )
  }
export default About
