HOME. TS:
import { Component, OnInit } from '@angular/core';

import * as $ from 'jquery';

// import { FormGroup, FormBuilder, Validators,FormControl } from '@angular/forms';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent implements OnInit {

  // requestForm: FormGroup;
  country_list = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia","Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];


  constructor() {console.log($(window));
    
  }

  ngOnInit() {
    // this.requestForm = this.fb.group({
    //   firstName: ['', Validators.required],
    //   lastName: ['', Validators.required],
    //   email: ['', Validators.required],
    //   phone: ['', Validators.required],
    //   country: ['', Validators.required],
    //   company: ['', Validators.required],
    //   type: ['', Validators.required]
    // })

    $(function(){  // $(document).ready shorthand
      $('.monster').fadeIn('slow');
    });
    
    $(document).ready(function() {
        $(window).load(function(){
          $('.hideme').each(function(i){
            $(this).animate({'opacity':'1'},1500);
          })
        })
        
        /* Every time the window is scrolled ... */
        $(window).scroll( function(){
        
            /* Check the location of each desired element */
            $('.hideme-left').each( function(i){
                
                var bottom_of_object = $(this).position().top + $(this).outerHeight()/2;
                var bottom_of_window = $(window).scrollTop() + $(window).height();
                
                if( bottom_of_window > bottom_of_object ){
                    
                    $(this).animate({'opacity':'1', 'left':'-10px'},500);
                        
                }
                
            }); 

            $('.hideme-right').each( function(i){
                
              var bottom_of_object = $(this).position().top + $(this).outerHeight();
              var bottom_of_window = $(window).scrollTop() + $(window).height();
              
              if( bottom_of_window > bottom_of_object ){
                  
                  $(this).animate({'opacity':'1', 'right':'-10px'},500);
                      
              }
              
          });
        
        });
        
    });
  }

  // requestInfo(){
  //   console.log("Info requested by:   ",this.requestForm)
  // }

  playvid(){
    //as noted in addendum, check for querystring exitence
    var symbol = $("#video")[0].src.indexOf("?") > -1 ? "&" : "?";
    //modify source to autoplay and start video
    $("#video")[0].src += symbol + "autoplay=1";
}
}

HOME. HTML:
<!-- <div class="display-1" >hello</div> -->


<main  role="container">

  <article class="main-article" >
    <div class="cover nav-transparent">
      <div class="jumbotron mb-0 position-relative bg-transparent py-0">
        <div class="container text-white">
          <div class="row">
            <div class="col-md-12 col-lg-6">
              <br>
              <br>
              <br>
              <br>
              <img id="top" class="mb-5 img-responsive" style="width: 20vw; filter: drop-shadow(0 0 0.75rem rgb(255, 255, 255)); " src="../../assets/infosys.png"
                alt="Infy logo">
              <h1>
                <b>Analytics Built for Embed—Simple. Fast. Predictable.</b>
              </h1>
              <p class="mb-4">Choose an embedded analytics platform that is purpose-built for the embed market. Reveal’s modern architecture
                simplifies how you integrate, manage, and pay for analytics.</p>
              <p>
                <span class="d-none-ios-inline d-none-android-inline">
                  <a class="demo btn btn-secondary mb-2 mr-3 gaEventTrackerLink trackCTA" href="#preview"
                    (click)="playvid()" data-ga-category="Downloads" data-ga-action="Click" data-ga-label="Reveal: Demo" data-xd-ga-label="Reveal Demo"
                    data-xd-ga-action="No Login">See Preview</a>
                </span>
                <a class="sdk btn btn-tertiary mb-2 trackCTA" href="/download-sdk" data-xd-ga-label="Reveal SDK" data-xd-ga-action="Download">
                  Request Training
                </a>
              </p>
              <div class="row">
                <span class="pl-3 py-1">Also available for: </span>
                <ul class="list-inline--piped list-inline font-weight-light col-md-7 py-1">
                  <li class="list-inline-item text-center">
                    <a class="a" href="https://app.revealbi.io" style="text-decoration: none; font-weight: 400;  color: white;">
                      <span class="d-block underline">Web</span>
                    </a>
                  </li>&nbsp;|&nbsp;&nbsp;
                  <li class="list-inline-item text-center">
                    <a class="a" href="/download-desktop" style="text-decoration: none; font-weight: 400;   color: white;">
                      <span class="d-block underline">Desktop</span>
                    </a>
                  </li>&nbsp;|&nbsp;&nbsp;
                  <li class="list-inline-item text-center">
                    <a class="a" href="https://apps.apple.com/us/app/id1450654686" style="text-decoration: none; font-weight: 400;   color: white;">
                      <span class="d-block underline">iOS</span>
                    </a>
                  </li>&nbsp;|&nbsp;&nbsp;
                  <li class="list-inline-item text-center">
                    <a class="a" href="https://play.google.com/store/apps/details?id=com.infragistics.reveal" style="text-decoration: none; font-weight: 400;   color: white;">
                      <span class="d-block underline">Android</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-6">
              <br>
              <br>
              <!-- <img class="d-none d-lg-block" src="https://static.infragistics.com/marketing/reveal/business-teams-reveal-embedded-hero-illustration.svg"
                alt=""> -->
                
                <!-- <iframe id="InfyGitHub Login"
    title="InfyGitHub Login"
    width="100%"
    height="75%"
    src="https://infygithub.ad.infosys.com/login">
    </iframe> -->
            <app-login></app-login>
            </div>
          </div>
        </div>
        <!-- <div class="row d-none">
                       <svg version="1.1" id="curve" xmlns="http://www.w3.org/2000/svg" x="0" y="0" viewBox="0 0 1920 429.3" xml:space="preserve"><path class="st0" d="M-.6 145.8c213.2-67.7 436-108 659.9-110.8 112.7-1.4 225.6 6.8 336.6 26.2 108.1 18.8 208.7 59.1 314.7 83.2 67.5 15.3 135.6 24.8 205 24.2 152-1.3 301.9-50.3 404-167.4v428H0l-.6-283.4z"/></svg>
                  </div> --></div>
      <div class="border-wave-bottom ie-hide">
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1920 180.3"
          style="enable-background:new 0 0 1920 180.3;" xml:space="preserve">
          <style type="text/css">
            .st0 {
              fill: #FFFFFF;
              stroke: #FFFFFF;
            }
          </style>
          <path class="st0" d="M-2,145.7C211.7,78.1,435,37.9,659.4,35.2c113-1.4,226.1,6.8,337.4,26.1c108.4,18.7,209.2,58.9,315.4,83
                      c67.7,15.3,135.9,24.7,205.5,24.1c152.4-1.3,302.6-50.2,405-166.9v182.7H-1.4L-2,145.7z" />
        </svg>
      </div>
    </div>
    <!-- SECTION: #1 -->
    <section  id="preview" class="container py-5">
      <div class="row mb-lg-3 align-items-center">
        <div class="hideme-right col-md-6 mb-4">
          <!-- <img class="img-fluid" src="https://static.infragistics.com/marketing/reveal/reveal-embedded-marketing-campaign-dashboard-768.jpg?v=201903041500"
            alt="Marketing Dashboard in Reveal" srcset="https://static.infragistics.com/marketing/reveal/reveal-embedded-marketing-campaign-dashboard-480.jpg?v=201903041500 480w, https://static.infragistics.com/marketing/reveal/reveal-embedded-marketing-campaign-dashboard-768.jpg?v=201903041500 768w, https://static.infragistics.com/marketing/reveal/reveal-embedded-marketing-campaign-dashboard-1100.jpg?v=201903041500 1100w"> -->
            <br>
            <iframe id="video" style="border-radius: 5px; box-shadow: 0px 0px , 0.5em 0 1em rgb(116, 194, 230);" width="100%" height="250px" src="https://www.youtube.com/embed/aP6_Z86iKIA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        <div class="hideme-left col-md-6 order-md-2  pl-lg-4" >
          <h2>Why Choose Purpose-Built Embedded Analytics?</h2>
          <p>Many of today’s embedded analytics and BI vendors built their standalone applications first so they are not purposely
            designed to be embedded into applications. This adds tremendous complexity, requiring complicated integration
            with their back-end proprietary system. It also forces ISVs or enterprises to use an unpredictable and costly,
            metered pricing model.</p>
        </div>
      </div>
      <div  id="content" ></div>
      <div class="row mr-auto ml-auto mt-5 mb-5">
        <div class="hideme-right col-md-4 pl-md-5 pr-md-5 pl-sm-3 pr-sm-3 " >
          <div class="text-center">
            <img class="b-lazy rounded-circle" src="../../assets/screen.svg" alt="Creating beautiful visualizations" width="140" height="140">
          </div>
          <p class="mt-3">
            <strong>Fast, Easy Integration</strong>
            <br>Easily integrate analytics into your application with no added requirements, a flexible architecture and a UI
            that matches the look and feel of your app.</p>
        </div>
        <div class="hideme-right col-md-4 pl-md-5 pr-md-5 pl-sm-3 pr-sm-3 " >
          <div class="text-center">
            <img class="b-lazy rounded-circle" src="../../assets/ui.svg" alt="Data Visualization" width="140" height="140">
          </div>
          <p class="mt-3">
            <strong>Superior User Experience </strong>
            <br>Excite your users by making it easy for them to create, edit, and share their own beautiful dashboards without
            leaving your application. Increase adoption of evidence-based decision making.
            <a href="https://www.revealbi.io/reveal-sdk-samples/upmedia" target="_blank">Try it yourself</a>
          </p>
        </div>
        <div class="hideme-right col-md-4 pl-md-5 pr-md-5 pl-sm-3 pr-sm-3 " >
          <div class="text-center">
            <img class="b-lazy rounded-circle" src="../../assets/price.svg" alt="Stay connected with your data" width="140" height="140">
          </div>
          <p class="mt-3">
            <strong>Transparent, Affordable Pricing </strong>
            <br>With our simple, fixed price you can reach an unlimited number of users on any device. And pay no usage fees.
            Know exactly
            <a href="#pricing">what you'll be paying</a> without any surprises.</p>
        </div>
      </div>
      <div id="developers" class="row mb-lg-3 align-items-center mt-5">
        <div class="hideme-right col-md-6 mb-4 mt-4 order-2 order-md-1  pr-lg-4" >
          <img class="b-lazy img-fluid" src="https://static.infragistics.com/marketing/reveal/business-teams-reveal-developer-icon.svg"
            alt="easy to use API" width="531" data-src="https://static.infragistics.com/marketing/reveal/business-teams-reveal-developer-icon.svg">
        </div>
        <div class="hideme-left col-md-6 order-md-2  pl-lg-4" >
          <h2>Deploy Everywhere: Cloud, Web, Desktop, Mobile, On-Premise</h2>
          <p>Cut the time to create and manage dashboards for your end users and eliminate vendor-side dependencies. Reveal’s
            responsive dashboards look beautiful everywhere with touch and smooth scrolling on all screen sizes. Use our
            powerful APIs to quickly add analytics capabilities to existing applications with our native web, desktop, iOS
            and Android SDKs.</p>
          <ul>
            <li>Connect to on-premise or cloud-based backend</li>
            <li>Deploy to any cloud or on-premise server</li>
            <li>Manage deployment, scalability and resilience with container and micro-service architecture</li>
            <li>Control how users engage with customer filters, themes, and authentication methods</li>
            <li>Enable custom actions based on your users' interactions</li>
            <li>Link to your data models and create dashboards from your application memory with our in-memory data source</li>
          </ul>
          <p>Check out any of our resources including the
            <a href="/help/developer" target="_blank">Reveal Developer Guide</a>,
            <a href="/help" target="_blank">Documentation</a>, or
            <a href="https://static.infragistics.com/marketing/reveal/business-teams-reveal-architecture-and-security.pdf?v=201903141130"
              target="_blank">Architechure and Security</a>.</p>
        </div>
      </div>
    </section>
    <!-- SECTION: #3 -->
    <section class="container py-5">
      <header class="row">
        <div class="col-md-12 text-center mb-5">
          <h2 class="pb-4">Make Your Apps Shine with Embedded Analytics</h2>
          <p>
            <a class="btn btn-primary demo2" href="#preview" (click)="playvid" >See Preview</a>
          </p>
        </div>
      </header>
      <div class="row vborder">
        <div class="hideme-left col-md-6 left">
          <div  >
            <img class="b-lazy img-fluid mb-4" src="../../assets/growth.jpg" alt="White-label Brand Identity" width="1100" height="703"
              sizes="(max-width: 768px) 100vw, (max-width: 1100px) and (min-width: 769px) 50vw, 540px" data-src="https://static.infragistics.com/marketing/reveal/business-teams-reveal-employees-analytics-768.jpg?v=201901021545"
              data-srcset="https://static.infragistics.com/marketing/reveal/business-teams-reveal-employees-analytics-480.jpg?v=201901021545 480w, https://static.infragistics.com/marketing/reveal/business-teams-reveal-employees-analytics-768.jpg?v=201901021545 768w, https://static.infragistics.com/marketing/reveal/business-teams-reveal-employees-analytics-960.jpg?v=201901021545 960w https://static.infragistics.com/marketing/reveal/business-teams-reveal-employees-analytics-1100.jpg?v=201901021545 1100w">
            <h3 class="text-primary">Drive Higher Business Growth</h3>
            <p>Only 35% of enterprise employees currently use analytics. A key issue is that existing programs interrupt user
              flow, requiring employees to use a separate tool. If you embed analytics in their existing apps, analytics
              become intuitive and help spur faster and better decision-making.</p>
          </div>
        </div>
        <div class="hideme-right col-md-6 right">
          <div  >
            <img class="b-lazy img-fluid mb-4" src="../../assets/native.jpg" alt="Save time and money with Reveal's embedded analytics"
              width="1100" height="703" sizes="(max-width: 768px) 100vw, (max-width: 1100px) and (min-width: 769px) 50vw, 540px"
              data-src="https://static.infragistics.com/marketing/reveal/business-teams-reveal-native-sdks-768.jpg?v=201905200900"
              data-srcset="https://static.infragistics.com/marketing/reveal/business-teams-reveal-native-sdks-480.jpg?v=201905200900 480w, https://static.infragistics.com/marketing/reveal/business-teams-reveal-native-sdks-768.jpg?v=201905200900 768w, https://static.infragistics.com/marketing/reveal/business-teams-reveal-native-sdks-1100.jpg?v=201905200900 1100w">
            <h3 class="text-primary">Save Time with Native SDKs</h3>
            <p>Reveal is built with the latest technologies including native toolkits for web, desktop, and mobile. Integrate
              Reveal quickly into your code at a fraction of the time and cost of
              <a href="https://static.infragistics.com/marketing/reveal/Why-Embedded.pdf?_ga=2.44958948.152473682.1562167030-1689362116.1552564980"
                target="_blank">building it yourself</a>.</p>
          </div>
        </div>
        <div class="hideme-left col-md-6 left">
          <div >
            <img class="b-lazy img-fluid mb-4" src="../../assets/cost.jpg" alt="Save time and money with Reveal's embedded analytics"
              width="1100" height="703" sizes="(max-width: 768px) 100vw, (max-width: 1100px) and (min-width: 769px) 50vw, 540px"
              data-src="https://static.infragistics.com/marketing/reveal/business-teams-reveal-reduce-support-costs-768.jpg?v=201901031415"
              data-srcset="https://static.infragistics.com/marketing/reveal/business-teams-reveal-reduce-support-costs-480.jpg?v=201901031415 480w, https://static.infragistics.com/marketing/reveal/business-teams-reveal-reduce-support-costs-768.jpg?v=201901031415 768w, https://static.infragistics.com/marketing/reveal/business-teams-reveal-reduce-support-costs-1100.jpg?v=201901031415 1100w">
            <h3 class="text-primary">Reduce Support Costs</h3>
            <p>When user easily create their own visualizations and dashboards, less training is required, lowering your support
              burden and backlog. Provide your end users with true self-services capabilities such as drill-down, dashboard
              linking and filtering.</p>
          </div>
        </div>
        <div class="hideme-left col-md-6 right">
          <div  >
            <img class="b-lazy img-fluid mb-4" src="../../assets/scale.jpg" alt="Built for Scalability and Resiliency" width="1100" height="703"
              sizes="(max-width: 768px) 100vw, (max-width: 1100px) and (min-width: 769px) 50vw, 540px" data-src="https://static.infragistics.com/marketing/reveal/business-intelligence-reveal-scalability-768.jpg?v=201901031415"
              data-srcset="https://static.infragistics.com/marketing/reveal/business-intelligence-reveal-scalability-480.jpg?v=201901031415 480w, https://static.infragistics.com/marketing/reveal/business-intelligence-reveal-scalability-768.jpg?v=201901031415 768w, https://static.infragistics.com/marketing/reveal/business-intelligence-reveal-scalability-1100.jpg?v=201901031415 1100w">
            <h3 class="text-primary">Built for Scalability and Resiliency</h3>
            <p>Reveal’s architecture incorporates containers and microservices so it is distributed across tens or hundreds
              of servers—providing resiliency and making it easy to scale.</p>
          </div>
        </div>
      </div>
    </section>
    <!-- SECTION: Reviews -->
    <section class="bg-light">
      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 5 1920 184"
        style="enable-background:new 0 5 1920 184;" xml:space="preserve" class="ie-hide">
        <style type="text/css">
          .st0 {
            fill: #FFFFFF;
            stroke: #FFFFFF;
            stroke-width: 2px;
          }
        </style>
        <path class="st0" d="M1921,39.3c-213.4,67.7-436.3,108-660.4,110.8c-112.8,1.4-225.8-6.8-336.8-26.2
        c-108.2-18.8-208.9-59.1-314.9-83.2c-67.5-15.3-135.7-24.8-205.1-24.2C251.6,17.8,101.6,66.8-0.6,183.9V0.4h1921L1921,39.3z"
        />
      </svg>
      <div class="container">
        <header class="row">
          <div class="col-md-12 text-center mb-0">
            <h2>Trusted by the Best in the Business</h2>
          </div>
        </header>
        <div class="container bq--openquote">
          <div class="row mr-auto ml-auto mt-5">
            <div class="col-md-6 col-lg-6 pl-md-5 pr-md-5 pl-sm-3 pr-sm-3 hideme-right" >
              <blockquote>
                <p class="mt-3">"Reveal is so intuitive that we incorporated it into our existing software much faster than expected, and
                  we created beautiful dashboards with little need for documentation. Our ERP software now transforms data
                  into powerful visualizations and provides our customers with
                  <span class="text-primary">
                    <strong>tactical, operational, and strategic insights</strong>
                  </span>.</p>
                <footer class="byline">Mark Turkel, CEO of Palm Beach Software</footer>
              </blockquote>
            </div>
            <div class="col-md-6 col-lg-6 pl-md-5 pr-md-5 pl-sm-3 pr-sm-3 hideme-right" >
              <blockquote>
                <p class="mt-3">"We've been really happy with Infragistics' embedded analytics tools over the years. We are excited by Reveal's
                  beautiful data visualizations and
                  <span class="text-primary">
                    <strong>drag and drop simplicity</strong>
                  </span>.</p>
                <footer class="byline">Makoto Yamada, Chief Technology Officer, SuperStream</footer>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- SECTION: #4 -->
    <section class="container py-5">
      <div class="row pt-4 align-items-center">
        <div class="col-sm-4 text-center mb-2 pr-0">
          <img class="w-100 b-lazy" style="max-width: 250px;" src="../../assets/7ques.png" alt="" width="250" height="253">
        </div>
        <div class="col-sm-8 text-left mb-2">
          <h2 class="pb-1 pr-4">Buyer’s Guide: 7 Questions to Ask Your Embedded Analytics Vendor</h2>
          <p class="pr-4">Before you commit to a vendor, consider this: Will your app experience be consistent on every platform—or is it
            optimized for only 1? Can you figure out its cost? Explore these and many others in our
            <a href="https://static.infragistics.com/marketing/reveal/files/reveal-buyers-guide.pdf?v=201908051500" target="_blank">newest Buyer's Guide.</a>
          </p>
        </div>
      </div>
    </section>
    <!-- SECTION: #5 new pricing -->
    <section id="pricing" class="bg-light pricing pricing--embed-table">
      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 5 1920 184"
        style="enable-background:new 0 5 1920 184;" xml:space="preserve" class="ie-hide">
        <style type="text/css">
          .st0 {
            fill: #FFFFFF;
            stroke: #FFFFFF;
            stroke-width: 2px;
          }
        </style>
        <path class="st0" d="M1921,39.3c-213.4,67.7-436.3,108-660.4,110.8c-112.8,1.4-225.8-6.8-336.8-26.2
                c-108.2-18.8-208.9-59.1-314.9-83.2c-67.5-15.3-135.7-24.8-205.1-24.2C251.6,17.8,101.6,66.8-0.6,183.9V0.4h1921L1921,39.3z"
        />
      </svg>
      <div class="container">
        <header class="row" style="margin-right: 0px;">
          <div class="col-md-12 text-center pb-4" style="max-width: 900px; margin: 0 auto;">
            <h2>100% Pricing Transparency</h2>
            <p>We offer pricing that is affordable and predictable. No hidden fees, no hidden costs. We make it easy for you
              to understand the TCO of Reveal.</p>
          </div>
        </header>
        <div class="row" style="max-width: 900px; margin: 0 auto;">
          <div class="col-md-4 pb-3 pb-md-0 p-0">
            <div class="card mb-0 shadow-sm p-0" style="padding: 0px;">
              <div class="card-header bg-color-french-rose text-white text-center">
                <h3 class="mb-0">3 Year Subscription</h3>
              </div>
              <div class="card-body text-center">
                <div class="w-100">
                  <h5 class="mb-1">3 annual payments of</h5>
                  <h2>$40,000</h2>
                  <p class="text-primary mb-0">Great Value!</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 pb-3 pb-md-0 p-0">
            <div class="card mb-0 shadow-sm p-0" style="padding: 0px;">
              <div class="card-header bg-color-french-rose text-white text-center">
                <h3 class="mb-0">3 Year Subscription</h3>
              </div>
              <div class="card-body text-center">
                <div class="w-100">
                  <h5 class="mb-1">1 upfront payment of</h5>
                  <h2>$90,000</h2>
                  <p class="text-primary mb-0">Great Value!</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 pb-3 pb-md-0 p-0">
            <div class="card mb-0 shadow-sm p-0" style="padding: 0px;">
              <div class="card-header text-white text-center bg-color-dove-gray">
                <h3 class="mb-0">1 Year Subscription</h3>
              </div>
              <div class="card-body text-center">
                <div class="w-100">
                  <h5 class="mb-1">1 upfront payment of</h5>
                  <h2>$50,000</h2>
                  <p class="mb-0">
                    <br> </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 p-0">
            <div class="card mb-4 shadow-sm">
              <div class="card-body text-center">
                <div class="w-100">
                  <h3 class="pb-1">Each offer includes:</h3>
                  <h5 class="">Subscription for 1 Embed application</h5>
                  <h5 class="">Standard support for up to 5 named developers</h5>
                  <p>
                    <a class="btn btn-primary demo2 " href="#request-demo">Contact Us</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row" style="max-width: 900px; margin: 0 auto;">
          <div class="col text-center">
            <p class="m-4">
              <strong>Priority support</strong> - 1 embed Reveal app $12,000 a year for 1 app dev contact. Take advantage of 1 day
              turn around response. Plus Phone support along with email.</p>
            <p class="small">* To be eligible for an embed license pricing you must ship a software application along with the embed Reveal
              product. This application needs to be more than the Functionality of Reveal. You may not use Reveal embed for
              the sole purpose of exposing only its functionality.</p>
          </div>
        </div>
      </div>
    </section>
    <!-- SECTION: Form -->
    <section class="bg-light">
      <div id="request-demo" class="container pt-5">
        <header class="row">
          <div class="col-md-12 text-center reveal-embedded-request-container" style="max-width: 900px; margin: 0 auto;">
            <h2 class="pb-4">Request More Information</h2>
            <p>Enable your customers to consume KPI Dashboards, Marketing Dashboards, and much more. Fill out this simple form,
              <a href="/about-us#connect">email</a> or
              <a href="/about-us#connect">call a local office</a> to get pricing  information, schedule a demo, or request any additional information!  </p>
          </div>
        </header>
        
        <form class="form" onsubmit="requestInfo()">
        <div class="row formrow">

            <div class="col-md-6">

              <div class="form-group">
                <label for="firstName">First Name:
                  <span class="text-danger small">*</span>
                </label> <br>
                <input type="text" name="firstName" id="firstName">

                <!-- <div id="firstNameError">
                      <span class="text-danger" >This field is required.</span>
                    </div> -->
              </div>

              <div class="form-group">
                <label for="email">Business Email:
                  <span class="text-danger small">*</span>
                </label><br>
                <input type="text" name="email" id="email">

                <!-- <div id="emailError">
                        <span class="text-danger" >This field is required.</span>
                      </div> -->
              </div>

              <div class="form-group">
                <label for="country">Country:
                  <span class="text-danger small">*</span>
                </label><br>
                <select style=" height: 30px; color: slategray " name="country" id="country">
                  <option selected value="null">Select..</option>
                  <!-- <div  *ngFor="let countries of country_list" > -->
                              <option *ngFor="let countries of country_list" [value]="countries" >{{countries}}</option>
                            <!-- </div> -->
                </select>

                <!-- <div id="countryError">
                          <span class="text-danger">This field is required.</span>
                        </div> -->
              </div>

              <div class="form-group">
                <label for="type">What are you interested in:
                </label><br>
                <input type="checkbox"  id="type1" value="pricing" name="type">&nbsp; Pricing&nbsp;&nbsp;
                <input type="checkbox"  id="type2" value="demo" name="type">&nbsp; Schedule a Demo&nbsp;&nbsp;
                <input type="checkbox"  id="type3" value="other" name="type">&nbsp; Other&nbsp;&nbsp;
              </div>

            </div>

            <div class="col-md-6" >
            <div class="form-group">
              <label for="lastName">Last Name:
                <span class="text-danger small">*</span>
              </label><br>
              <input type="text" name="lastName" id="lastName">

              <!-- <div id="lastNameError">
                  <span class="text-danger" >This field is required.</span>
                </div> -->
            </div>



            <div class="form-group">
              <label for="phone">Phone:
                <span class="text-danger small">*</span>
              </label><br>
              <input type="text" name="phone" id="phone">

              <!-- <div id="phoneError">
                  <span class="text-danger" >This field is required.</span>
                </div> -->
            </div>



            <div class="form-group">
              <label for="company">Company:
              </label><br>
              <input type="text" name="company" id="company">
            </div>


          </div>
          <p class="small" >By clicking on the “Submit” button below, you understand and agree that the use of the Infragistics website is subject to the Infragistics’ Terms of Use and Privacy Policy.</p>
        </div>
        <div class="text-center">
          <button type="submit" class="btn submit " href="#request-demo">Submit</button>
        </div>
      </form>
      </div>
    </section>


    <section class="container py-5">
      <header class="row">
        <div class="col-md-12 text-center">
          <h2 class="mb-4">Join the Conversation</h2>
          <p>Read the latest about analytics and visualizations.
            <a href="https://www.infragistics.com/community/blogs/tags/Reveal">View more blogs.</a>
          </p>
        </div>
      </header>
      <section class="container-fluid row">
        <article class="col-md-4">
          <div class="card mr-1">
            <img class="card-img-top" src="../../assets/analytic.jpg" alt="Infragistics Launches Reveal Embedded Analytics Platform"
            />

            <div class="card-body">
              <header>
                <h4>
                  <a class="bt__post-link" href="https://www.infragistics.com/community/blogs/b/infragistics/posts/reveal-offers-striking-data-visualizations">
                    Infragistics Launches Reveal Embedded Analytics Platform
                  </a>
                </h4>
                <span class="bt__post-subheader">
                  <span>
                    <a href="https://www.infragistics.com/community/members/381d65b9209f4b42136cb5f906893766fdbe403b">
                      Casey McGuigan
                    </a>
                  </span>&nbsp;/&nbsp;
                  <time datetime="2019-08-13">Aug 13, 2019</time>
                </span>
                <br>
                <br>
              </header>
              <div>
                Purpose-built for embed, Reveal's modern architecture simplifies how you integrate,...
              </div>
            </div>
          </div>
        </article>

        <article class="col-md-4">
          <div class="card mr-1">
            <img class="card-img-top" src="../../assets/bi.jpg" alt="Infragistics Launches Reveal Embedded Analytics Platform" />

            <div class="card-body">
              <header>
                <h4>
                  <a class="bt__post-link" href="https://www.infragistics.com/community/blogs/b/infragistics/posts/reveal-offers-striking-data-visualizations">
                    How Reveal BI Secures Your Data
                  </a>
                </h4>
                <span class="bt__post-subheader">
                  <span>
                    <a href="https://www.infragistics.com/community/members/381d65b9209f4b42136cb5f906893766fdbe403b">
                      Casey McGuigan
                    </a>
                  </span>&nbsp;/&nbsp;
                  <time datetime="2019-08-13">Jul 15, 2019</time>
                </span>
                <br>
                <br>
              </header>
              <div>
                The Reveal embedded business intelligence platform is based on a cloud architecture that includ...
              </div>
            </div>
          </div>
        </article>

        <article class="col-md-4">
          <div class="card mr-1">
            <img class="card-img-top" src="../../assets/dashboard.jpg" alt="Infragistics Launches Reveal Embedded Analytics Platform"
            />

            <div class="card-body">
              <header>
                <h4>
                  <a class="bt__post-link" href="https://www.infragistics.com/community/blogs/b/infragistics/posts/reveal-offers-striking-data-visualizations">
                    How to Create Your First Business Intelligence Dashboard with Reveal
                  </a>
                </h4>
                <span class="bt__post-subheader">
                  <span>
                    <a href="https://www.infragistics.com/community/members/381d65b9209f4b42136cb5f906893766fdbe403b">
                      Casey McGuigan
                    </a>
                  </span>&nbsp;/&nbsp;
                  <time datetime="2019-08-13">Jul 10, 2019</time>
                </span>
                <br>
                <br>
              </header>
              <div>
                If you are not familiar with creating dashboards, it can be a little overwhelming trying to fig...
              </div>
            </div>
          </div>
        </article>

      </section>
    </section>
    <!-- SECTION: Footer -->
    <section class=" cover bg-gradient--primary text-white" style="margin-bottom: -1px;">
      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1920 168"
        style="enable-background:new 0 0 1920 168; width:100%;height:auto;margin-top:-2px;" xml:space="preserve" class="ie-hide">
        <style type="text/css">
          .st0 {
            fill: #fff;
            stroke: #fff;
          }
        </style>
        <path class="st0" d="M0,44.4c0,73.1,271.2,94.3,315.5,99.6c269.2,32,521.3-13.2,785-58.9c146.1-25.4,291.6-57.7,440-66.7c126.1-7.7,254.7,6.8,379.4,26V-1.3H0V44.4z"
        />
      </svg>
      <div class="container end">
        <div class="row pt-5 pb-4">
          <div class="col-12 text-center">
            <h2 class="mb-4">Follow Us for the Latest News and Updates</h2>
            <!-- Social Links -->
            <ul class="list-inline d-table mx-auto">
              <li class="list-inline-item">
                <a class="btn p-1 link--opacity-highlight" href="https://www.facebook.com/reveal.bi" target="_blank">
                  <img class="b-lazy" src="https://static.infragistics.com/marketing/reveal/facebook-icon.svg" alt="Facebook" width="20" height="20"
                  />
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn p-1 link--opacity-highlight" href="https://www.instagram.com/reveal.bi/" target="_blank">
                  <img class="b-lazy" src="https://static.infragistics.com/marketing/reveal/instagram-icon.svg" alt="Instagram" width="20"
                    height="20" />
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn p-1 link--opacity-highlight" href="https://twitter.com/reveal_bi" target="_blank">
                  <img class="b-lazy" src="https://download.infragistics.com/marketing/reveal/twitter-icon.svg" alt="Twitter" width="20" height="20"
                  />
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn p-1 link--opacity-highlight" href="https://www.linkedin.com/showcase/revealbi" target="_blank">
                  <img class="b-lazy" src="https://static.infragistics.com/marketing/reveal/linkedin-icon.svg" alt="Linkedin" width="20" height="20"
                  />
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn p-1 link--opacity-highlight" href="https://www.youtube.com/playlist?list=PLZ4rRHIJepBt-USWdh-9BimHh-GjPAGUH"
                  target="_blank">
                  <img class="b-lazy" src="https://static.infragistics.com/marketing/reveal/youtube-icon.svg" alt="Youtube" width="20" height="20"
                  />
                </a>
              </li>
            </ul>
            <!-- Resources 
  <ul class="list-inline list-inline--piped font-weight-light">
  <li class="list-inline-item"><a href="#">Support</a></li>
  <li class="list-inline-item"><a href="#">Documentation</a></li>
  <li class="list-inline-item"><a href="#">Forums</a></li>
  </ul>-->
            <!-- Footer links -->
            <section>
              <div class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left pt-4 m-auto justify-content-center">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <h5 class="footer-title">
                      <span>Developers</span>
                      <br><span style="text-decoration: line-through;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </h5>
                    <ul style="list-style-type:none;" class="list--li-style-none list--li-space-sm pt-1 pl-0">
                      <li>
                        <a class="a"  href="/help">
                          <span >Application Documentation</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="/help/developer">
                          <span >SDK API Documentation</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="https://static.infragistics.com/marketing/reveal/business-teams-reveal-architecture-and-security.pdf?v=201903141130"
                          target="_blank">
                          <span >Architecture and Security</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <h5 class="footer-title">
                      <span>Resources</span>
                      <br><span style="text-decoration: line-through;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </h5>
                    <ul style="list-style-type:none;" class="list--li-style-none list--li-space-sm pt-1 pl-0">
                      <li>
                        <a class="a"  href="https://www.infragistics.com/my-account/submit-support-request/reveal" target="_blank">
                          <span >Support</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="/faq">
                          <span >FAQs</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="https://www.infragistics.com/community/blogs/tags/Reveal">
                          <span >Blogs</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="https://www.infragistics.com/community/ideas/i/reveal" target="_blank">
                          <span >Ideas</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="https://www.infragistics.com/community/forums/f/reveal" target="_blank">
                          <span >Forums</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <h5 class="footer-title">
                      <span>Try it Now</span>
                      <br><span style="text-decoration: line-through;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </h5>
                    <ul style="list-style-type:none;" class="list--li-style-none list--li-space-sm pt-1 pl-0">
                      <li>
                        <a class="a" href="https://app.revealbi.io/" >
                          <span >Web</span>
                        </a>
                      </li>
                      <li>
                        <a class="a" href="/download-desktop">
                          <span >Desktop</span>
                        </a>
                      </li>
                      <li>
                        <a class="a" href="/download-sdk">
                          <span >Embedded SDK</span>
                        </a>
                      </li>
                      <li>
                        <a class="a" href="https://apps.apple.com/us/app/id1450654686">
                          <span >iOS</span>
                        </a>
                      </li>
                      <li>
                        <a class="a" href="https://play.google.com/store/apps/details?id=com.infragistics.reveal">
                          <span >Android</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-2">
                    <h5 class="footer-title">
                      <span>Company</span>
                      <br><span style="text-decoration: line-through;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </h5>
                    <ul style="list-style-type:none;" class="list--li-style-none list--li-space-sm pt-1 pl-0">
                      <li>
                        <a class="a"  href="/about-us">
                          <span >Who We Are</span>
                        </a>
                      </li>
                      <li>
                        <a class="a"  href="/about-us#connect">
                          <span >Contact Us</span>
                        </a>
                      </li>
                      <li>
                        <a class="a" href="/about-us#connect">
                          <span >Global Offices</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </section>
  </article>

</main>
HOME.CSS:
.cover{
    /* background: linear-gradient(to right,  rgb(33, 195, 235), rgb(179, 72, 221) 70% ); */
    background: linear-gradient(-90deg,rgb(65, 125, 236) 0%,rgba(191, 104, 218) 90%);
}


.btn {
    color: white;
    display: inline-block;
    text-transform: uppercase;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    font-size: 0.875rem;
    font-weight: bold;
    line-height: 1.5;
    border-width: 1px;
    border-style: solid;
    /* border-color: transparent; */
    border-color: white;
    border-image: initial;
    padding: 0.625rem 1.75rem;
    border-radius: 1.5rem;
    transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
}

.btn-secondary, .btn-secondary:active, .btn-secondary:visited {
    color: rgb(186, 72, 221);
    background-color: rgb(255, 255, 255);
    border-color: rgb(255, 255, 255);
}

.btn-primary, .btn-primary:active, .btn-primary:visited {
    color: rgb(255, 255, 255);
    background-color: rgb(186, 72, 221);
    border-color: rgb(186, 72, 221);
}

.submit{
    color:rgb(186, 72, 221);
    background-color: white;
    border-color: rgb(186, 72, 221);
}

.submit:hover{
    background-color: rgb(186, 72, 221);
    color: white;
}

.demo:hover{
    background-color: rgb(186, 72, 221);
    color: white;
}

.sdk:hover{
    background-color: rgb(0, 111, 238);
}

.demo2:hover{
    background-color: white;
    color: rgb(186, 72, 221);
}

link:hover{
    text-decoration: underline;
}

h2, .h2 {
    font-size: 2.25rem;
    font-weight: 700;
}

.text-primary {
    color: rgb(186, 72, 221) !important;
}

h3, .h3 {
    font-size: 1.5rem;
}

blockquote::before{
    color: rgb(186, 72, 221);
    content: open-quote no-close-quote;
    display: inline;
    font-size: 6em;
    line-height: 0;
    height: 0px;
    left: -20px;
    position: relative;
    top: 55px;
    font-family: Perpetua, Baskerville, "Baskerville Old Face", "Hoefler Text", "Times New Roman", serif;
}

.byline{
    opacity: 0.7;
}

.bg-color-french-rose {
    background-color: rgb(186, 72, 221);
}
.bg-color-dove-gray {
    background-color: #666;
}

.card{
    padding: 0%;
    width:100%;
    height: 100%;
}

article>.card{
    cursor: -webkit-grabbing;
}

h4>a{
    text-decoration: none;
    color: black;
}

.card:hover
    h4>a{
        color: rgb(7, 55, 126);
    }


ul>li>a{
    text-decoration: none;
    color: white;
}

.bt__post-link{
    font-size: 70%;
}

.bt__post-subheader{
    font-size: 85%;
}

.formrow{
    margin: 10%;
    margin-bottom: 0;
    margin-top: 0;
    font-size: 90%;
}

input, select{
    color: slategray;
    opacity: 0.6;

}


  .left{
      padding-right: 1.5rem;
      border-right: 2px solid #ddd;
      padding-bottom: 1.5rem;
  }

  @media(max-width: 510px) { 
    .left{
        border-right: 0px;
    }
   }

  .right{
    padding-left: 3rem;
    padding-bottom: 1.5rem;
  }

  .hideme{
      opacity: 0;
  }

  .hideme-left
  {
      opacity:0;
      position: relative;
      left: 0px;
  }

  .hideme-right
  {
      opacity:0;
      position: relative;
      right: 0px;
  }



  .a:after {    
    text-decoration-line: none !important;
    bottom: 0;
    content: "";
    display: block;
    height: 2px;
    position: relative;
    background: #fff;
    transition: width 0.3s ease 0s, left 0.3s ease 0s;
    width: 0;
  }
  
 .a:hover:after { 
    width: 50%; 
    left: 0; 
  }
  
/*  padding-right: 3rem; 
 border-right: 2px solid #ddd; 
 padding-bottom: 1.5rem; 
4.  for right
padding-left: 3rem; 
5.   padding-bottom: 1.5rem;*/
app module:
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    LoginComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

APP. TS:
import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
// declare var $: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit{
  title = 'Reveal';
  constructor(){
  console.log($(window));
}

  ngOnInit(){
    $(document).ready(function() {
      $(window).on("scroll", function() {

        if (document.body.scrollTop > 600 || document.documentElement.scrollTop > 600) {
          document.getElementById("back-to-top").hidden=false;
          document.getElementById("back-to-top").style.display = "block";
      } else {
          document.getElementById("back-to-top").style.display = "none";
      }
        
        if ($(window).scrollTop() > 200) {
          
          $("#skip-to-content").addClass("hide");
          $(".navbar").addClass("compressed");
          $("#navscroll").addClass("pos");
          $("#hidebtn").removeClass("show");
          $("#hidebtn").addClass("hide");
          $("#removesep").removeClass("show");
          $("#removesep").addClass("hide");
          $("#scrollbtn").removeClass("hide");
          $("#scrollbtn").addClass("show");
        } else {
          $(".navbar").removeClass("compressed");
          $("#navscroll").removeClass("pos");
          $("#removesep").removeClass("hide");
          $("#removesep").addClass("show");
          $("#hidebtn").removeClass("hide");
          $("#hidebtn").addClass("show");
          $("#scrollbtn").removeClass("show");
          $("#scrollbtn").addClass("hide");

        }

      });
    });

    
}
content(){
  document.getElementById("skip-to-content").hidden=true;
}

playvid(){
    //as noted in addendum, check for querystring exitence
    var symbol = $("#video")[0].src.indexOf("?") > -1 ? "&" : "?";
    //modify source to autoplay and start video
    $("#video")[0].src += symbol + "autoplay=1";
}
 
}


APP.HTML:
<!--The content below is only a placeholder and can be replaced.-->
<!-- Header/Nav -->
<nav class="navbar navbar-default navbar-fixed-top small">
        <a id="skip-to-content" href="#content" (click)="content()" ><span class="alert alert-success">Skip to content</span></a>
  
      <!-- Navbar Header [collects both toggle button and navbar brand] -->
      <div class="navbar-header">
        <!-- Toggle Button [handles opening navbar menu on mobile screens]-->
        
  
        <!-- Navbar Brand -->
        <a href="#" class="navbar-brand container col-md-1 ">
                        <img class="img img-responsive" src="../assets/infosys.png" width="80px" height="32px" alt="RevealBi Logo">
                    </a>
      </div>
  
  
      <!-- Navbar Collapse [collect navbar components such as navbar links and forms ] -->
  
        <!-- Navbar Links -->
        <ul id="navscroll" class="nav mx-auto">
            <li id="hidebtn" class="nav-item"><a class="a" href="#preview" (click)="playvid()" >See Preview</a></li>
            &nbsp;&nbsp;<span id="removesep" class="sep" >|</span>&nbsp;&nbsp;
          <li class="nav-item"><a class="a"  href="#">Pricing</a></li>
          &nbsp;&nbsp;<span class="sep" >|</span>&nbsp;&nbsp;
          <li class="nav-item"><a class="a"  href="#">Request Training</a></li>
          &nbsp;&nbsp;<span class="sep" >|</span>&nbsp;&nbsp;
          <li class="nav-item"><a class="a"  href="#">Sign In</a></li>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <li id="scrollbtn" class="nav-item hide"><a href="#preview" (click)="playvid()"> <button type="button" class="btn" style="font-size: 80%;" > See Preview</button></a></li>
        </ul>
  
  </nav>


<app-home></app-home>


 <span  id="back-to-top"  title="Back to Top" hidden><a href="#top" ><img src="../assets/kobler-3.png" alt="go to up" width="40px" height="35px" ></a></span>

<router-outlet></router-outlet>

<!-- <div id="login" class="col-md-6 offset-1" style="position: absolute; top: 5%; right: 2%;" >
    <app-login></app-login>
  </div> -->

<footer class="footer">
  <div class="text-center" >
    <br>
    <span class="small" >powered by</span> <br>
    <img class="logo" src="../assets/Infragistics.svg" alt="Infragistics logo"> <br>
    
    <a onMouseOver="this.style.color='rgb(206, 197, 197)'" onmouseout="this.style.color='#666'" href="#">Privacy Policy</a>
    &nbsp;&nbsp;|&nbsp;&nbsp;
    <a onMouseOver="this.style.color='rgb(206, 197, 197)'" onmouseout="this.style.color='#666'" href="#"> Cookies</a>
    &nbsp;&nbsp;|&nbsp;&nbsp;
    <a onMouseOver="this.style.color='rgb(206, 197, 197)'" onmouseout="this.style.color='#666'" href="#"> Terms of Use</a> 
    <br>
    © Copyright 2019 INFRAGISTICS. All Rights Reserved.
    <br><br>
  </div>
</footer>
APP. CSS:

.hide{
    visibility: hidden;
}

.show{
  visibility: visible;
}

.pos{
  font-size: 1vw;
  position: relative;
  right: -100px;
}

.navbar {
  position: absolute;
    width: 100%;
    max-height:70px;
    padding-top: 5px;
    padding-bottom: 5px;
    /* padding-bottom: 25px; */
    background: transparent;
    color: transparent;
    transition: all 0.3s;
    z-index: 99;
  }

  @media (max-width: 636px) { 
    .navbar ul, #hidebtn, #removesep, #scrollbtn{
      visibility: hidden;
    }
   }

  .navbar .navbar-header{
    visibility: hidden;
  }

  .navbar ul{
        overflow:hidden;
        position: relative;
        text-align: center;
 }
  .navbar ul li{
        display:inline-block;
}
  .navbar a, .navbar .sep{
    color: rgb(255, 255, 255) !important;
  }
  
  .navbar.compressed {
    position: fixed;
    padding-top: 10px;
    background: #ffffff;
    color: #ffffff;
    opacity: 0.9;
    box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
  }

  .navbar.compressed .navbar-header{
    visibility: visible;
    position: relative;
    left: 50px;
  }
  .navbar.compressed a, .navbar.compressed .sep {
    color: rgb(0, 0, 0) !important;
  }
  /* .navbar.compressed .sep, .navbar.compressed ul {
    visibility: hidden;
  } */

#skip-to-content{
    opacity: 0.5;
    font-size: 70%;
    font-weight: 600;
    position: fixed;
    top: 1;
    left: 1;
}

#back-to-top{
  opacity: 0.8;
  position: fixed;
  bottom: 10px;
  right: 10px;
  background: transparent;
}

#back-to-top:hover{
  opacity: 1;
}


.footer{
  background: black;
  color: #666;
  font-size: 90%;
}
.footer .logo {
  max-width: 150px;
  width: 100%;
  margin-bottom: 15px;
}

footer a{
  text-decoration: none;
  color: #666;
}


.a:hover, .a:visited, .a:link, .a:active
{
    text-decoration: none;
}


ul li .a:after {    
  text-decoration-line: none !important;
  bottom: 0;
  content: "";
  display: block;
  height: 2px;
  position: relative;
  background: #fff;
  transition: width 0.3s ease 0s, left 0.3s ease 0s;
  width: 0;
}

ul li .a:hover:after { 
  width: 100%; 
  left: 0; 
}

.navbar.compressed ul li .a:hover:after { 
  background: black;
}

.btn{
  color: #fff;
    background-color: rgb(186, 72, 221);
    border-color: rgb(186, 72, 221);display: inline-block;
    font-weight: 400;
    text-transform: uppercase;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    padding: 0.5rem 1.25rem;
    font-size: 0.5rem;
    font-weight: bold;
    line-height: 1.5;
    border-radius: 1.5rem;
    transition: color 0.15s ease-in-out,background-color 0.15s ease-in-out,border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out;
}

.btn:hover, .btn:link, .btn:active{
  background-color: white;
  color: rgb(186, 72, 221);
  border-color: rgb(186, 72, 221);
}

Angular.JSON:
{
  "$schema": "./node_modules/@angular/cli/lib/config/schema.json",
  "version": 1,
  "newProjectRoot": "projects",
  "projects": {
    "Reveal": {
      "projectType": "application",
      "schematics": {},
      "root": "",
      "sourceRoot": "src",
      "prefix": "app",
      "architect": {
        "build": {
          "builder": "@angular-devkit/build-angular:browser",
          "options": {
            "outputPath": "dist/Reveal",
            "index": "src/index.html",
            "main": "src/main.ts",
            "polyfills": "src/polyfills.ts",
            "tsConfig": "tsconfig.app.json",
            "aot": false,
            "assets": [
              "src/favicon.ico",
              "src/assets"
            ],
            "styles": [
              "node_modules/bootstrap/dist/css/bootstrap.min.css",
              "src/styles.css"
            ],
            "scripts": [  
              "node_modules/jquery/dist/jquery.min.js",
              "node_modules/popper.js/dist/umd/popper.min.js",
              "node_modules/bootstrap/dist/js/bootstrap.min.js"
            ]
          },
          "configurations": {
            "production": {
              "fileReplacements": [
                {
                  "replace": "src/environments/environment.ts",
                  "with": "src/environments/environment.prod.ts"
                }
              ],
              "optimization": true,
              "outputHashing": "all",
              "sourceMap": false,
              "extractCss": true,
              "namedChunks": false,
              "aot": true,
              "extractLicenses": true,
              "vendorChunk": false,
              "buildOptimizer": true,
              "budgets": [
                {
                  "type": "initial",
                  "maximumWarning": "2mb",
                  "maximumError": "5mb"
                }
              ]
            }
          }
        },
        "serve": {
          "builder": "@angular-devkit/build-angular:dev-server",
          "options": {
            "browserTarget": "Reveal:build"
          },
          "configurations": {
            "production": {
              "browserTarget": "Reveal:build:production"
            }
          }
        },
        "extract-i18n": {
          "builder": "@angular-devkit/build-angular:extract-i18n",
          "options": {
            "browserTarget": "Reveal:build"
          }
        },
        "test": {
          "builder": "@angular-devkit/build-angular:karma",
          "options": {
            "main": "src/test.ts",
            "polyfills": "src/polyfills.ts",
            "tsConfig": "tsconfig.spec.json",
            "karmaConfig": "karma.conf.js",
            "assets": [
              "src/favicon.ico",
              "src/assets"
            ],
            "styles": [
              "src/styles.css"
            ],
            "scripts": []
          }
        },
        "lint": {
          "builder": "@angular-devkit/build-angular:tslint",
          "options": {
            "tsConfig": [
              "tsconfig.app.json",
              "tsconfig.spec.json",
              "e2e/tsconfig.json"
            ],
            "exclude": [
              "**/node_modules/**"
            ]
          }
        },
        "e2e": {
          "builder": "@angular-devkit/build-angular:protractor",
          "options": {
            "protractorConfig": "e2e/protractor.conf.js",
            "devServerTarget": "Reveal:serve"
          },
          "configurations": {
            "production": {
              "devServerTarget": "Reveal:serve:production"
            }
          }
        }
      }
    }
  },
  "defaultProject": "Reveal"
}
Package JSON:
{
  "name": "service-store",
  "version": "0.0.0",
  "scripts": {
    "ng": "ng",
    "start": "ng serve",
    "build": "ng build",
    "test": "ng test",
    "lint": "ng lint",
    "e2e": "ng e2e"
  },
  "private": true,
  "dependencies": {
    "@agm/core": "^1.0.0-beta.5",
    "@angular/animations": "^7.2.15",
    "@angular/cdk": "^7.3.7",
    "@angular/common": "~7.2.0",
    "@angular/compiler": "^7.2.13",
    "@angular/core": "~7.2.0",
    "@angular/forms": "~7.2.0",
    "@angular/material": "^7.3.7",
    "@angular/platform-browser": "~7.2.0",
    "@angular/platform-browser-dynamic": "~7.2.0",
    "@angular/router": "~7.2.0",
    "@fortawesome/fontawesome-free": "^5.8.1",
    "@ng-bootstrap/ng-bootstrap": "^4.2.1",
    "@types/chrome": "0.0.88",
    "@types/googlemaps": "^3.30.19",
    "angular-font-awesome": "^3.1.2",
    "aos": "^2.3.4",
    "bootstrap": "^4.3.1",
    "core-js": "^2.5.4",
    "font-awesome": "^4.7.0",
    "jquery": "^1.12.4",
    "ng-starrating": "^1.0.6",
    "ng2-simple-smooth-scroll": "^0.3.0",
    "popper.js": "^1.15.0",
    "primeicons": "^1.0.0",
    "primeng": "^7.1.3",
    "rxjs": "~6.3.3",
    "tslib": "^1.9.0",
    "zone.js": "~0.8.26"
  },
  "devDependencies": {
    "@angular-devkit/build-angular": "~0.13.0",
    "@angular/cli": "~7.3.4",
    "@angular/compiler-cli": "~7.2.0",
    "@angular/language-service": "~7.2.0",
    "@types/jasmine": "~2.8.8",
    "@types/jasminewd2": "~2.0.3",
    "@types/node": "~8.9.4",
    "codelyzer": "~4.5.0",
    "install": "^0.12.2",
    "jasmine-core": "~2.99.1",
    "jasmine-spec-reporter": "~4.2.1",
    "karma": "~4.0.0",
    "karma-chrome-launcher": "~2.2.0",
    "karma-coverage-istanbul-reporter": "~2.0.1",
    "karma-jasmine": "~1.1.2",
    "karma-jasmine-html-reporter": "^0.2.2",
    "karma-junit-reporter": "^1.2.0",
    "npm": "^6.9.0",
    "protractor": "~5.4.0",
    "ts-node": "~7.0.0",
    "tslint": "~5.11.0",
    "typescript": "~3.2.2"
  }
}

