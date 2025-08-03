<?php
// Database connection
$host = "localhost";
$user = "root"; // default user for XAMPP
$pass = "";     // leave blank in XAMPP unless you set a password
$db = "travel_site";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get destination ID from the URL
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

// Fetch destination info
$destQuery = "SELECT * FROM destinations WHERE id = $id";
$destResult = $conn->query($destQuery);
$destination = $destResult->fetch_assoc();

// Fetch packages for this destination
$pkgQuery = "SELECT * FROM packages WHERE destination_id = $id";
$pkgResult = $conn->query($pkgQuery);

// Helper function to check for .jpg or .jpeg version of a file
function getImagePath($filename) {
    $base = pathinfo($filename, PATHINFO_FILENAME);
    $jpgPath = "pictures/" . $base . ".jpg";
    $jpegPath = "pictures/" . $base . ".jpeg";

    if (file_exists($jpgPath)) {
        return $jpgPath;
    } elseif (file_exists($jpegPath)) {
        return $jpegPath;
    } else {
        return null;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?php echo $destination['name']; ?> | Destination Explorer</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar">
    <div class="navbar__container">
      <a href="index.html" id="navbar__logo">Destination Explorer</a>
      <ul class="navbar__menu">
        <li class="navbar__item"><a href="index.html" class="navbar__links">Home</a></li>
        <li class="navbar__item"><a href="about.html" class="navbar__links">About Us</a></li>
        <li class="navbar__item"><a href="explore.html" class="navbar__links">Explore</a></li>
        <li class="navbar__btn"><a href="login.html" class="button">Login/Register</a></li>
      </ul>
    </div>
  </nav>

  <!-- Destination Details -->
  <section class="about__section">
    <div class="about__container">
      <h1><?php echo $destination['name']; ?></h1>
      <h2><?php echo $destination['subtitle']; ?></h2>
      <p><?php echo $destination['description']; ?></p>
    </div>
  </section>

  <!-- Gallery Section -->
  <section class="gallery__section">
    <h2>Gallery</h2>
    <div class="gallery__grid">
      <?php if (!empty($destination['img_gallery1'])): ?>
        <div class="gallery__card">
          <?php $img1 = getImagePath($destination['img_gallery1']); ?>
            <?php if ($img1): ?>
            <img src="<?php echo $img1; ?>" alt="Gallery Image 1">
            <?php endif; ?>

        </div>
      <?php endif; ?>
      <?php if (!empty($destination['img_gallery2'])): ?>
        <div class="gallery__card">
          <?php $img2 = getImagePath($destination['img_gallery2']); ?>
            <?php if ($img2): ?>
            <img src="<?php echo $img2; ?>" alt="Gallery Image 2">
            <?php endif; ?>

        </div>
      <?php endif; ?>
    </div>
  </section>

  <!-- Tour Packages -->
  <section class="packages__section">
    <div class="destinations__grid">
      <?php while ($pkg = $pkgResult->fetch_assoc()) { ?>
        <div class="destination__card">
          <h2><?php echo $pkg['name']; ?> Package</h2>
          <p><strong>Price:</strong> $<?php echo $pkg['price']; ?></p>
          <p><?php echo $pkg['features']; ?></p>
          <a href="login.html">Buy Now</a>
        </div>
      <?php } ?>
    </div>
  </section>

</body>
</html>
