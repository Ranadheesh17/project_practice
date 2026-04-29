<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
*{margin:0;padding:0;box-sizing:border-box}
body{
  font-family:Poppins,sans-serif;
  background:#f5f7fb;
  color:#1a1a1a;
}

/* HEADER */
header{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:15px 30px;
  background:white;
  box-shadow:0 4px 20px rgba(0,0,0,0.05);
  position:sticky;top:0;
}

.logo{
  font-size:22px;
  font-weight:600;
}
.logo span{color:#00c2ff}

nav a{
  margin:0 10px;
  text-decoration:none;
  color:#333;
  font-size:14px;
}

.search{
  padding:8px 12px;
  border-radius:20px;
  border:1px solid #ddd;
}

/* HERO */
.hero{
  text-align:center;
  padding:60px 20px;
  background:linear-gradient(120deg,#0a2540,#00c2ff);
  color:white;
}

.hero h1{font-size:36px;margin-bottom:10px}
.hero button{
  margin-top:20px;
  padding:12px 20px;
  border:none;
  border-radius:25px;
  background:white;
  color:#0a2540;
  cursor:pointer;
}

/* PRODUCTS */
.products{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
  gap:20px;
  padding:40px;
}

.card{
  background:white;
  border-radius:12px;
  overflow:hidden;
  box-shadow:0 10px 25px rgba(0,0,0,0.05);
  transition:.2s;
}
.card:hover{transform:translateY(-5px)}

.card img{
  width:100%;
  height:180px;
  object-fit:cover;
}

.card-body{padding:15px}
.card h4{font-size:16px;margin-bottom:5px}

.price{
  font-weight:600;
  margin:10px 0;
}

button.add{
  width:100%;
  padding:10px;
  border:none;
  background:#0a2540;
  color:white;
  border-radius:8px;
  cursor:pointer;
}

/* FOOTER */
footer{
  text-align:center;
  padding:20px;
  background:white;
  margin-top:20px;
  font-size:14px;
  color:#777;
}
</style>
</head>

<body>

<header>
  <div class="logo">Nexus<span>Shop</span></div>

  <nav>
    <a href="#">Home</a>
    <a href="#">Products</a>
    <a href="#">Deals</a>
  </nav>

  <input class="search" id="search" placeholder="Search...">
</header>

<section class="hero">
  <h1>Modern Shopping Experience</h1>
  <p>Simple, fast & clean eCommerce UI</p>
  <button onclick="scrollToProducts()">Shop Now</button>
</section>

<section class="products" id="products"></section>

<footer>
  © 2026 NexusShop
</footer>

<script>
const PRODUCTS = [
  {name:"iPhone 14 Pro",price:1099,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
  {name:"MacBook Air M2",price:999,img:"https://images.unsplash.com/photo-1517336714731"},
  {name:"Nike Shoes",price:150,img:"https://images.unsplash.com/photo-1542291026"},
  {name:"Headphones",price:199,img:"https://images.unsplash.com/photo-1518441902117"}
];

const container=document.getElementById("products");

function render(list){
  container.innerHTML="";
  list.forEach(p=>{
    container.innerHTML+=`
      <div class="card">
        <img src="${p.img}?auto=format&fit=crop&w=600">
        <div class="card-body">
          <h4>${p.name}</h4>
          <div class="price">$${p.price}</div>
          <button class="add" onclick="addToCart()">Add to Cart</button>
        </div>
      </div>
    `;
  });
}

function addToCart(){
  alert("Added to cart");
}

document.getElementById("search").addEventListener("input",(e)=>{
  const q=e.target.value.toLowerCase();
  const filtered=PRODUCTS.filter(p=>p.name.toLowerCase().includes(q));
  render(filtered);
});

function scrollToProducts(){
  document.getElementById("products").scrollIntoView({behavior:"smooth"});
}

render(PRODUCTS);
</script>

</body>
</html>
