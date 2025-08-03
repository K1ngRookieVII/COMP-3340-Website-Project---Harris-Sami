document.addEventListener("DOMContentLoaded", function () {
  const searchInput = document.getElementById("search");
  const cards = document.querySelectorAll(".destination__card");

  searchInput.addEventListener("input", function () {
    const query = searchInput.value.toLowerCase();

    cards.forEach((card) => {
      const title = card.querySelector("h2, h3").textContent.toLowerCase();
      const description = card.querySelector("p").textContent.toLowerCase();

      if (title.includes(query) || description.includes(query)) {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    });
  });
});
