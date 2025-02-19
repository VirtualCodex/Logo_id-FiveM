

window.addEventListener("message", function(event) {
 
  if (event.data.type === "setPlayerID") {
    const playerIdElement = document.getElementById("player-id");
    if (playerIdElement) {
      playerIdElement.textContent = event.data.id;}
      
  }
});
