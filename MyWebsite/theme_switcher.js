function setTheme(themeName) {
  const themeLink = document.getElementById('theme-link');
  themeLink.setAttribute('href', themeName);
  localStorage.setItem('selectedTheme', themeName);
}

// Load stored theme on page load
window.onload = () => {
  const savedTheme = localStorage.getItem('selectedTheme') || 'style.css';
  document.getElementById('theme-link').setAttribute('href', savedTheme);
};

// Apply listener to the theme selector dropdown
document.addEventListener("DOMContentLoaded", () => {
  const select = document.getElementById("theme-select");
  if (select) {
    // Set the dropdown to reflect the currently saved theme
    select.value = localStorage.getItem("selectedTheme") || "style.css";

    // Listen for changes and switch the theme accordingly
    select.addEventListener("change", () => {
      setTheme(select.value);
    });
  }
});
