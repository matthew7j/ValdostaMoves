$(function() {
  var $demo, duration, remaining, tour;
  $demo = $("#demo");
  duration = 5000;
  remaining = duration;
  tour = new Tour({
    onStart: function() {
      return $demo.addClass("disabled", true);
    },
    onEnd: function() {
      return $demo.removeClass("disabled", true);
    },
    debug: true,
    steps: [
      {
        path: "/",
        element: "#demo",
        placement: "bottom",
        title: "Welcome to Valdosta Move!",
        content: "Valdosta Move, your one stop information source for a better life.",
        backdrop: true
      }, {
        path: "/",
        element: "#left-button",
        placement: "top",
        title: "Quickly View Upcoming Events!",
        content: "Easy is better, right? Clicking this button will show a table of upcoming events.",
        backdrop: true,
        animation: true
      }, {
        path: "/",
        element: "#right-button",
        placement: "bottom",
        title: "Find Out What Others Think of Valdosta Moves!",
        content: "Real tweets! Click this button to see other's tweets",
        backdrop: true
      }, {
        path: "/",
        element: "#navbar",
        placement: "bottom",
        title: "Easy to Navigate",
        content: "Please use our nav bar to quickly navigate through the site. Convenience right?! ",
        backdrop: true
      }, {
      	path: "/events",
      	element: "#eventlist",
      	placement: "top",
      	title: "Upcoming Events",
      	content: "All the upcoming events can be found here",
      }, 
      
      {
        path: "/events",
        element: "#event-description",
        placement: "top",
        title: "More Info Please!",
        content: "Detail description about the events",
        backdrop: true,
        animation: true,
      }, {
        path: "/events",
        element: "#event-location",
        placement: "top",
        title: "Where Will They Be At?",
        content: "Google maps does it all, with style!",
        //backdrop: true
      }, {
        path: "/categories",
        element: "#listing-category",
        placement: "top",
        title: "Great Food, Great Health",
        content: "Here, you can find some of the best recipes ever! You can click on the image to review more details",
      }, {
        path: "/categories",
        element: "#category-button",
        placement: "right",
        title: "Button Works Too!",
        content: "Or button will also do the job!",
        //backdrop: true
      }, {
        path: "/exercise/index",
        element: "#clickable",
        placement: "bottom",
        title: "Linked Images!",
        content: "Magical clickable body parts!",
        backdrop: true,
        
      },  {
        path: "/exercise/index",
        element: "#image",
        placement: "left",
        title: "Images With a Magical Touch",
        content: "Each image is linked to the exercises available for that part at bodybuilding.com!",
      },  {
        path: "/forums",
        element: "#forumtitle",
        placement: "top",
        title: "Different Forums For Different Purposes!",
        content: "Clicking on the forum will then reveal all the topics created under that forum",
        backdrop: true
      }, {
        path: "/forums/1",
        element: "#listing-topics",
        placement: "right",
        title: "Topics Everywhere!",
        content: "Choose the topic to see what people think about that topic",
        //backdrop: true
      }, {
        path: "/forums/1/topics/1",
        element: "#topic-posts",
        placement: "bottom",
        title: "Knowledge Is The Power!",
        content: "See what people think about this program",
        backdrop: true
      }, {
        path: "/gyms",
        element: "#gym-location",
        placement: "top",
        title: "Findout The Activity Clubs Around You!",
        content: "Clicking on the pointer on the map will show information about that particular gym",
        backdrop: true
      }, {
        path: "/gyms",
        element: "#login-ml",
        placement: "bottom",
        title: "Login!",
        content: "Login to get to restricted contents that are only available for registered users",
        backdrop: true
      }, {
        path: "/gyms",
        element: "#signup-ml",
        placement: "bottom",
        title: "Signup!",
        content: "Signup and join us! Let's get healthier, one move at a time!",
        backdrop: true,
        onHidden: function() {
          return window.location.assign("/");
        }
      }, 
    ]
  }).init().start();
  if (tour.ended()) {
    $('<div class="alert alert-info alert-dismissable"><button class="close" data-dismiss="alert" aria-hidden="true">&times;</button>You ended the demo tour. <a href="#" data-demo>Restart the demo tour.</a></div>').prependTo(".content").alert();
	}
  $(document).on("click", "[data-demo]", function(e) {
    e.preventDefault();
    if ($(this).hasClass("disabled")) {
      return;
    }
    tour.restart();
    return $(".alert").alert("close");
  });
  /*$("html").smoothScroll();
  return $(".gravatar").each(function() {
    var $this, email;
    $this = $(this);
    email = md5($this.data("email"));
    return $(this).attr("src", "http://www.gravatar.com/avatar/" + email + "?s=60");
  });*/
});