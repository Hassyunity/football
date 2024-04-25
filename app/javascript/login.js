document.addEventListener("DOMContentLoaded", function() {
  var images = ["/assets/images/image2.jpg", "/assets/images/image.png", "/assets/images/logo2.jpg"];
  var currentIndex = 0;
  var imgElement = document.getElementById("currentImage");

  function displayNextImage() {
      currentIndex = (currentIndex + 1) % images.length;
      imgElement.src = images[currentIndex];
  }

  setInterval(displayNextImage, 60000); // 60000 millisecondes = 1 minute
});
