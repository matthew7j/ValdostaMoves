{
  id: "hello-hopscotch",
  steps: [
    {
      target: "hopscotch-title",
      title: "Welcome to Hopscotch!",
      content: "Hey there! This is an example Hopscotch tour. There will be plenty of time to read documentation and sample code, but let\'s just take some time to see how Hopscotch actually works.",
      placement: "bottom",
      arrowOffset: 60
    },
    {
      target: document.querySelectorAll("#general-usage code")[1],
      title: "Where to begin",
      content: "At the very least, you\'ll need to include these two files in your project to get started.",
      placement: "right",
      yOffset: -20
    },
    {
      target: "my-first-tour-file",
      placement: "top",
      title: "Define and start your tour",
      content: "Once you have Hopscotch on your page, you\'re ready to start making your tour! The biggest part of your tour definition will probably be the tour steps."
    },
    {
      target: ".start-tour .child-element",
      placement: "right",
      title: "Starting your tour",
      content: "After you\'ve created your tour, pass it in to the startTour() method to start it.",
      yOffset: -25
    },
    {
      target: "basic-options",
      placement: "top",
      title: "Basic step options",
      content: "These are the most basic step options: <b>target</b>, <b>title</b>, <b>content</b>, and <b>placement</b>. For some steps, they may be all you need.",
      arrowOffset: 120,
      xOffset: 100
    }
  ],
  showPrevButton: true,
  scrollTopMargin: 100