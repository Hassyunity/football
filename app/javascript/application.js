// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// document.addEventListener("DOMContentLoaded", function() {
//   var images = ["image.png", "image2.jpg", "logo.jpg"]; // Liste des chemins d'accès des images
//   var index = 0; // Index de l'image actuelle
  
//   function displayNextImage() {
//       // Afficher l'image correspondante
//       var imgElement = document.getElementById("image");
//       imgElement.src = images[index];
      
//       // Passer à l'image suivante
//       index = (index + 1) % images.length;
//   }
  
//   // Afficher la première image immédiatement
//   displayNextImage();
  
//   // Afficher les images suivantes avec un délai de 3 secondes entre chaque
//   setInterval(displayNextImage, 3000); // 3000 millisecondes = 3 secondes
// });
