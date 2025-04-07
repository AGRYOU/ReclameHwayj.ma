<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Boutique Bon Occasion</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: #fff;
      color: #111;
    }
    header {
      background: #000;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
    nav a {
      margin: 0 15px;
      color: #fff;
      text-decoration: none;
      font-weight: bold;
    }
    .hero {
      background: url('https://images.unsplash.com/photo-1600185365483-26d7c2c6b84f?auto=format&fit=crop&w=1470&q=80') no-repeat center center/cover;
      height: 80vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: white;
      text-shadow: 1px 1px 4px #000;
      font-size: 2rem;
      text-align: center;
    }
    .hero h2 {
      margin-top: 20px;
      font-size: 1.5rem;
    }
    .products, .promotions {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
      padding: 40px;
    }
    .product {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: center;
    }
    .product img {
      width: 100%;
      height: 300px;
      object-fit: cover;
      border-radius: 10px;
    }
    footer {
      text-align: center;
      padding: 20px;
      background: #000;
      color: #fff;
    }
    #cart {
      position: fixed;
      bottom: 10px;
      right: 10px;
      background: #000;
      color: #fff;
      padding: 10px 20px;
      border-radius: 8px;
      cursor: pointer;
    }
    form {
      padding: 40px;
      max-width: 600px;
      margin: auto;
    }
    form input, form textarea {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    form button {
      background: #000;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .profile-section {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 20px;
      padding: 40px;
    }
    .profile-section img {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid #000;
    }
    .profile-section p {
      max-width: 400px;
    }
    .contact-info {
      text-align: center;
      padding: 20px;
      background: #f0f0f0;
      font-size: 1.2rem;
    }
  </style>
</head>
<body>
  <header>
    <h1>Boutique Bon Occasion</h1>
    <nav>
      <a href="#">Accueil</a>
      <a href="#">Boutique</a>
      <a href="#promotions">Promotions</a>
      <a href="#panier">Panier</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <section class="hero">
    <div>Boutique Bon Occasion</div>
    <h2>Des vêtements de qualité, une deuxième vie à petit prix</h2>
  </section>

  <section class="profile-section">
    <img src="https://media.licdn.com/dms/image/D4E03AQHj9d1ypjcgLw/profile-displayphoto-shrink_800_800/0/1708445887174?e=2147483647&v=beta&t=F2phJ-eaSKT6s9nHSGKqgN4z8TV2v2aV_lR2kAOe2mY" alt="Photo de profil">
    <p>Bienvenue ! Je suis le fondateur de la Boutique Bon Occasion. Ma mission est de proposer des vêtements d’occasion de qualité, à prix réduit, tout en encourageant une consommation responsable. Merci pour votre visite et bon shopping !</p>
  </section>

  <section class="products">
    <div class="product">
      <img src="https://images.unsplash.com/photo-1585386959984-a4155224a1a1?auto=format&fit=crop&w=800&q=80" alt="Veste vintage">
      <h3>Veste Vintage</h3>
      <p>200 DH</p>
      <button onclick="addToCart('Veste Vintage', 200)">Ajouter au panier</button>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1612423284934-d2ba7f67e8cc?auto=format&fit=crop&w=800&q=80" alt="Chemise casual">
      <h3>Chemise Casual</h3>
      <p>120 DH</p>
      <button onclick="addToCart('Chemise Casual', 120)">Ajouter au panier</button>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1530847887473-09c4083fd84c?auto=format&fit=crop&w=800&q=80" alt="Chaussures élégantes">
      <h3>Chaussures Élégantes</h3>
      <p>250 DH</p>
      <button onclick="addToCart('Chaussures Élégantes', 250)">Ajouter au panier</button>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1520975911096-3f9f3b2cfeb0?auto=format&fit=crop&w=800&q=80" alt="Robe élégante">
      <h3>Robe Élégante</h3>
      <p>180 DH</p>
      <button onclick="addToCart('Robe Élégante', 180)">Ajouter au panier</button>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1602810318383-0db2228e5a4e?auto=format&fit=crop&w=800&q=80" alt="Jean moderne">
      <h3>Jean Moderne</h3>
      <p>160 DH</p>
      <button onclick="addToCart('Jean Moderne', 160)">Ajouter au panier</button>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1533674689015-54b8b7da2b74?auto=format&fit=crop&w=800&q=80" alt="Manteau hiver">
      <h3>Manteau Hiver</h3>
      <p>300 DH</p>
      <button onclick="addToCart('Manteau Hiver', 300)">Ajouter au panier</button>
    </div>
  </section>

  <section class="promotions" id="promotions">
    <h2 style="text-align:center">Promotions & Nouveautés</h2>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1622335789605-bcfb0c58dd70?auto=format&fit=crop&w=800&q=80" alt="Nouveauté Sweat">
      <h3>Sweat Capuche Trendy</h3>
      <p><s>180 DH</s> 140 DH</p>
      <button onclick="addToCart('Sweat Capuche Trendy', 140)">Ajouter au panier</button>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1586790170083-c1f86cd79961?auto=format&fit=crop&w=800&q=80" alt="Nouveauté Pull">
      <h3>Pull Tricoté Moderne</h3>
      <p><s>220 DH</s> 170 DH</p>
      <button onclick="addToCart('Pull Tricoté Moderne', 170)">Ajouter au panier</button>
    </div>
  </section>

  <section id="contact">
    <h2 style="text-align:center">Contactez-nous</h2>
    <form>
      <input type="text" placeholder="Nom" required>
      <input type="email" placeholder="Email" required>
      <textarea placeholder="Votre message..." rows="5" required></textarea>
      <button type="submit">Envoyer</button>
    </form>
  </section>

  <div class="contact-info">
    📍 Casablanca, Maroc | 📞 0601137171 | ✉️ bon.occasion.maroc@gmail.com
  </div>

  <div id="cart" onclick="showCart()">🛒 Voir le panier (<span id="cart-count">0</span>)</div>

  <footer>
    &copy; 2025 Boutique Bon Occasion - Tous droits réservés
  </footer>

  <script>
    let cart = [];

    function addToCart(product, price) {
      cart.push({ product, price });
      document.getElementById('cart-count').textContent = cart.length;
      alert(product + ' ajouté au panier.');
    }

    function showCart() {
      if (cart.length === 0) {
        alert('Votre panier est vide.');
        return;
      }
      let details = 'Panier:\n';
      let total = 0;
      cart.forEach(item => {
        details += '- ' + item.product + ' : ' + item.price + ' DH\n';
        total += item.price;
      });
      details += '\nTotal : ' + total + ' DH';
      alert(details);
    }
  </script>
</body>
</html>
