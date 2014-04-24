== README

Blocmetrics demo - Analytics service that you can use to track events on your applications.

Made with my mentor at [Bloc](http://bloc.io)

* Ruby version - 2.0.0p451

* Track events on your website with minimal Javascript embedded in your page's view

* Sends data to Blocmetrics application where you can login and view a dashboard of your events

* Renders charts illustrating events data


**Installation**

Add the JavaScript snippet to your code right before the </body> tag in the webpage(s) you wish to track.

```
<script> 
$(document).ready(function (){
    // track a client-side event using the Blocmetrics analytics service
  var _bm_event = {
    name: "event name, required",
    application: "application_name_here",
    property_1: 'some_value' (ex. "<%= @topic.name %>"),
    property_2: 'some value' (ex <%= current_user ? current_user.id : 0 %>),
    app_owner: "your_domain_email" // admin, general email to synch app with Blocmetrics view for app_owner  
  }

  var _bm_request = new XMLHttpRequest();
  _bm_request.open("POST", "http://collier-blocmetrics.herokuapp.com/events", true);
  _bm_request.setRequestHeader('Content-Type', 'application/json');
  _bm_request.onreadystatechange = function() {
    // this function runs when the Ajax request changes state.
    // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
  };
  _bm_request.send(JSON.stringify(_bm_event));
}());</script>
```

##**Custom Attributes**

The JavaScript snippet is compatible with customized attributes. Simply add additonal properties.  For instance,

```
  var _bm_event = {
    name: "Page Views",
    application: "Reddit", 
    topic_name: "<%= @topic.name %>",
    app_user: ex <%= current_user ? current_user.id : 0 %>, // --> where 0 represents non-user activity
    app_owner: "your_domain_email" // admin, general email to synch app with Blocmetrics view for app_owner  
  }
```

**Usage**

Sign-up for [Blocmetrics](collie-blocmetrics.herokuapp.com) before including the JavaScript snippet in your code.  Sign-up using the same **domain_email** used in the snippet. 


