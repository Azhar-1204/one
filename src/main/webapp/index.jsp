
import React, { useEffect, useMemo, useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  Search,
  ShoppingBag,
  Heart,
  Menu,
  X,
  Plus,
  Minus,
  Trash2,
  ArrowRight,
  Star,
  Truck,
  ShieldCheck,
  RotateCcw,
  Headphones,
  Smartphone,
  Laptop,
  Shirt,
  Watch,
  Footprints,
  Camera,
  Sparkles,
  Check,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";

const categories = [
  { name: "All", icon: Sparkles },
  { name: "Smartphones", icon: Smartphone },
  { name: "Laptops", icon: Laptop },
  { name: "Clothing", icon: Shirt },
  { name: "Gadgets", icon: Headphones },
  { name: "Footwear", icon: Footprints },
  { name: "Accessories", icon: Watch },
];

const products = [
  {
    id: 1,
    title: "iPhone 14 Pro Max",
    category: "Smartphones",
    price: 1099,
    oldPrice: 1199,
    rating: 4.9,
    reviews: 128,
    badge: "New",
    image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 2,
    title: "MacBook Pro 14-inch",
    category: "Laptops",
    price: 1999,
    oldPrice: null,
    rating: 4.8,
    reviews: 86,
    badge: "Popular",
    image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 3,
    title: "Apple Watch Series 8",
    category: "Accessories",
    price: 349,
    oldPrice: 399,
    rating: 4.9,
    reviews: 214,
    badge: "Sale",
    image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 4,
    title: "Nike Air Max 270",
    category: "Footwear",
    price: 150,
    oldPrice: null,
    rating: 4.6,
    reviews: 53,
    badge: null,
    image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 5,
    title: "Sony Alpha Mirrorless Camera",
    category: "Gadgets",
    price: 2499,
    oldPrice: 2699,
    rating: 4.9,
    reviews: 42,
    badge: "New",
    image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 6,
    title: "Premium Eau de Parfum",
    category: "Accessories",
    price: 120,
    oldPrice: null,
    rating: 4.8,
    reviews: 189,
    badge: null,
    image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 7,
    title: "Everyday Travel Backpack",
    category: "Accessories",
    price: 79,
    oldPrice: 99,
    rating: 4.5,
    reviews: 67,
    badge: "Sale",
    image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=85",
  },
  {
    id: 8,
    title: "Sony WH-1000XM5 Headphones",
    category: "Gadgets",
    price: 399,
    oldPrice: 449,
    rating: 4.9,
    reviews: 156,
    badge: "Top rated",
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85",
  },
];

const formatMoney = (value) =>
  new Intl.NumberFormat("en-US", { style: "currency", currency: "USD" }).format(value);

function IconButton({ label, children, className = "", onClick }) {
  return (
    <button
      type="button"
      aria-label={label}
      onClick={onClick}
      className={`grid h-11 w-11 place-items-center rounded-full border border-slate-200 bg-white text-slate-700 transition hover:border-orange-200 hover:bg-orange-50 hover:text-orange-600 focus:outline-none focus:ring-2 focus:ring-orange-500 focus:ring-offset-2 ${className}`}
    >
      {children}
    </button>
  );
}

export default function NexusShop() {
  const [query, setQuery] = useState("");
  const [category, setCategory] = useState("All");
  const [cart, setCart] = useState({});
  const [wishlist, setWishlist] = useState([]);
  const [cartOpen, setCartOpen] = useState(false);
  const [menuOpen, setMenuOpen] = useState(false);
  const [sort, setSort] = useState("featured");
  const [notice, setNotice] = useState("");
  const [email, setEmail] = useState("");

  useEffect(() => {
    try {
      const saved = localStorage.getItem("nexus-cart");
      const savedWishlist = localStorage.getItem("nexus-wishlist");
      if (saved) setCart(JSON.parse(saved));
      if (savedWishlist) setWishlist(JSON.parse(savedWishlist));
    } catch {
      // Continue with an empty local store if browser storage is unavailable.
    }
  }, []);

  useEffect(() => {
    try {
      localStorage.setItem("nexus-cart", JSON.stringify(cart));
      localStorage.setItem("nexus-wishlist", JSON.stringify(wishlist));
    } catch {
      // The storefront remains usable without persistence.
    }
  }, [cart, wishlist]);

  useEffect(() => {
    if (!notice) return;
    const timer = window.setTimeout(() => setNotice(""), 2200);
    return () => window.clearTimeout(timer);
  }, [notice]);

  const filteredProducts = useMemo(() => {
    const term = query.trim().toLowerCase();
    const list = products.filter((product) => {
      const matchesSearch =
        !term ||
        product.title.toLowerCase().includes(term) ||
        product.category.toLowerCase().includes(term);
      const matchesCategory = category === "All" || product.category === category;
      return matchesSearch && matchesCategory;
    });

    return [...list].sort((a, b) => {
      if (sort === "price-low") return a.price - b.price;
      if (sort === "price-high") return b.price - a.price;
      if (sort === "rating") return b.rating - a.rating;
      return Number(Boolean(b.badge)) - Number(Boolean(a.badge));
    });
  }, [query, category, sort]);

  const cartItems = useMemo(
    () =>
      products
        .filter((product) => cart[product.id])
        .map((product) => ({ ...product, quantity: cart[product.id] })),
    [cart]
  );

  const cartCount = cartItems.reduce((total, item) => total + item.quantity, 0);
  const subtotal = cartItems.reduce((total, item) => total + item.price * item.quantity, 0);

  const addToCart = (product) => {
    setCart((current) => ({ ...current, [product.id]: (current[product.id] || 0) + 1 }));
    setNotice(`${product.title} added to cart`);
  };

  const changeQuantity = (id, change) => {
    setCart((current) => {
      const nextQuantity = (current[id] || 0) + change;
      const next = { ...current };
      if (nextQuantity <= 0) delete next[id];
      else next[id] = nextQuantity;
      return next;
    });
  };

  const toggleWishlist = (id) => {
    setWishlist((current) =>
      current.includes(id) ? current.filter((item) => item !== id) : [...current, id]
    );
  };

  const chooseCategory = (name) => {
    setCategory(name);
    document.getElementById("products")?.scrollIntoView({ behavior: "smooth" });
  };

  const subscribe = (event) => {
    event.preventDefault();
    if (!/^\S+@\S+\.\S+$/.test(email)) {
      setNotice("Enter a valid email address");
      return;
    }
    setEmail("");
    setNotice("Thanks for subscribing!");
  };

  return (
    <div className="min-h-screen bg-[#fafaf8] text-slate-950">
      <a
        href="#main-content"
        className="fixed left-4 top-3 z-[100] -translate-y-24 rounded-lg bg-slate-950 px-4 py-2 text-sm font-semibold text-white focus:translate-y-0"
      >
        Skip to content
      </a>

      <header className="sticky top-0 z-40 border-b border-slate-200/70 bg-white/90 backdrop-blur-xl">
        <div className="mx-auto flex max-w-7xl items-center gap-3 px-4 py-3 sm:px-6 lg:px-8">
          <IconButton label="Open navigation" className="lg:hidden" onClick={() => setMenuOpen(true)}>
            <Menu className="h-5 w-5" />
          </IconButton>

          <a href="#home" className="flex shrink-0 items-center gap-2 text-xl font-black tracking-tight">
            <span className="grid h-10 w-10 place-items-center rounded-2xl bg-orange-500 text-white shadow-sm">
              N
            </span>
            <span className="hidden sm:inline">Nexus<span className="text-orange-500">Shop</span></span>
          </a>

          <nav className="ml-5 hidden items-center gap-1 lg:flex" aria-label="Primary navigation">
            {[
              ["Home", "#home"],
              ["Categories", "#categories"],
              ["Shop", "#products"],
              ["Benefits", "#benefits"],
            ].map(([label, href]) => (
              <a key={label} href={href} className="rounded-full px-4 py-2 text-sm font-semibold text-slate-600 hover:bg-slate-100 hover:text-slate-950">
                {label}
              </a>
            ))}
          </nav>

          <label className="relative ml-auto hidden min-w-0 flex-1 sm:block sm:max-w-md">
            <span className="sr-only">Search products</span>
            <Search className="pointer-events-none absolute left-4 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400" />
            <input
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Search products"
              className="h-11 w-full rounded-full border border-slate-200 bg-slate-100 pl-11 pr-10 text-sm outline-none transition focus:border-orange-400 focus:bg-white focus:ring-4 focus:ring-orange-100"
            />
            {query && (
              <button type="button" aria-label="Clear search" onClick={() => setQuery("")} className="absolute right-3 top-1/2 -translate-y-1/2 rounded-full p-1 text-slate-400 hover:bg-slate-200">
                <X className="h-4 w-4" />
              </button>
            )}
          </label>

          <IconButton label="Wishlist">
            <Heart className={`h-5 w-5 ${wishlist.length ? "fill-orange-500 text-orange-500" : ""}`} />
          </IconButton>
          <IconButton label={`Open cart with ${cartCount} items`} className="relative" onClick={() => setCartOpen(true)}>
            <ShoppingBag className="h-5 w-5" />
            {cartCount > 0 && (
              <span className="absolute -right-1 -top-1 grid h-5 min-w-5 place-items-center rounded-full bg-orange-500 px-1 text-[11px] font-bold text-white">
                {cartCount}
              </span>
            )}
          </IconButton>
        </div>

        <div className="px-4 pb-3 sm:hidden">
          <label className="relative block">
            <span className="sr-only">Search products</span>
            <Search className="absolute left-4 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400" />
            <input
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Search products"
              className="h-11 w-full rounded-full border border-slate-200 bg-slate-100 pl-11 pr-4 text-sm outline-none focus:border-orange-400 focus:bg-white focus:ring-4 focus:ring-orange-100"
            />
          </label>
        </div>
      </header>

      <main id="main-content">
        <section id="home" className="px-4 pt-4 sm:px-6 lg:px-8">
          <div className="relative mx-auto min-h-[520px] max-w-7xl overflow-hidden rounded-[2rem] bg-slate-950">
            <img
              src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=90"
              alt="Modern fashion store interior"
              className="absolute inset-0 h-full w-full object-cover opacity-45"
            />
            <div className="absolute inset-0 bg-gradient-to-r from-slate-950 via-slate-950/70 to-transparent" />
            <div className="relative flex min-h-[520px] max-w-2xl flex-col justify-center px-6 py-16 sm:px-12 lg:px-16">
              <motion.span initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} className="mb-5 flex w-fit items-center gap-2 rounded-full border border-white/20 bg-white/10 px-4 py-2 text-xs font-bold uppercase tracking-wider text-orange-200 backdrop-blur">
                <Sparkles className="h-4 w-4" /> New collection 2026
              </motion.span>
              <motion.h1 initial={{ opacity: 0, y: 18 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.08 }} className="text-4xl font-black leading-tight tracking-tight text-white sm:text-6xl">
                Everyday essentials, thoughtfully selected.
              </motion.h1>
              <motion.p initial={{ opacity: 0, y: 18 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.16 }} className="mt-5 max-w-xl text-base leading-7 text-slate-200 sm:text-lg">
                Explore popular technology, fashion, and accessories with clear pricing and a simple shopping experience.
              </motion.p>
              <motion.div initial={{ opacity: 0, y: 18 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.24 }} className="mt-8 flex flex-wrap gap-3">
                <Button onClick={() => document.getElementById("products")?.scrollIntoView({ behavior: "smooth" })} className="h-12 rounded-full bg-orange-500 px-6 font-bold text-white hover:bg-orange-600">
                  Shop now <ArrowRight className="ml-2 h-4 w-4" />
                </Button>
                <Button variant="outline" onClick={() => chooseCategory("Gadgets")} className="h-12 rounded-full border-white/30 bg-white/10 px-6 font-bold text-white hover:bg-white hover:text-slate-950">
                  Explore gadgets
                </Button>
              </motion.div>
            </div>
          </div>
        </section>

        <section id="benefits" className="mx-auto grid max-w-7xl gap-3 px-4 py-7 sm:grid-cols-3 sm:px-6 lg:px-8">
          {[
            { icon: Truck, title: "Free delivery", text: "On eligible orders over $50" },
            { icon: RotateCcw, title: "Easy returns", text: "Simple 30-day return window" },
            { icon: ShieldCheck, title: "Secure checkout", text: "Protected payment experience" },
          ].map(({ icon: Icon, title, text }) => (
            <div key={title} className="flex items-center gap-4 rounded-2xl border border-slate-200 bg-white p-4">
              <span className="grid h-11 w-11 shrink-0 place-items-center rounded-xl bg-orange-50 text-orange-600"><Icon className="h-5 w-5" /></span>
              <div><h2 className="text-sm font-bold">{title}</h2><p className="text-xs text-slate-500">{text}</p></div>
            </div>
          ))}
        </section>

        <section id="categories" className="mx-auto max-w-7xl px-4 py-10 sm:px-6 lg:px-8">
          <div className="mb-6">
            <p className="text-sm font-bold uppercase tracking-widest text-orange-600">Browse faster</p>
            <h2 className="mt-2 text-3xl font-black tracking-tight">Shop by category</h2>
          </div>
          <div className="grid grid-cols-2 gap-3 sm:grid-cols-4 lg:grid-cols-7">
            {categories.map(({ name, icon: Icon }) => (
              <button
                type="button"
                key={name}
                aria-pressed={category === name}
                onClick={() => chooseCategory(name)}
                className={`group rounded-2xl border p-4 text-left transition focus:outline-none focus:ring-2 focus:ring-orange-500 focus:ring-offset-2 ${category === name ? "border-orange-500 bg-orange-50" : "border-slate-200 bg-white hover:-translate-y-1 hover:border-orange-200 hover:shadow-lg"}`}
              >
                <span className={`mb-4 grid h-11 w-11 place-items-center rounded-xl ${category === name ? "bg-orange-500 text-white" : "bg-slate-100 text-slate-700 group-hover:bg-orange-100 group-hover:text-orange-600"}`}>
                  <Icon className="h-5 w-5" />
                </span>
                <span className="block text-sm font-bold">{name}</span>
              </button>
            ))}
          </div>
        </section>

        <section id="products" className="mx-auto max-w-7xl px-4 py-12 sm:px-6 lg:px-8">
          <div className="mb-7 flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between">
            <div>
              <p className="text-sm font-bold uppercase tracking-widest text-orange-600">Curated picks</p>
              <h2 className="mt-2 text-3xl font-black tracking-tight">Products for you</h2>
              <p className="mt-2 text-sm text-slate-500" aria-live="polite">
                Showing {filteredProducts.length} {filteredProducts.length === 1 ? "product" : "products"}
                {category !== "All" ? ` in ${category}` : ""}
              </p>
            </div>
            <label className="flex items-center gap-3 text-sm font-semibold text-slate-600">
              Sort by
              <select value={sort} onChange={(event) => setSort(event.target.value)} className="h-11 rounded-xl border border-slate-200 bg-white px-3 outline-none focus:border-orange-400 focus:ring-4 focus:ring-orange-100">
                <option value="featured">Featured</option>
                <option value="rating">Highest rated</option>
                <option value="price-low">Price: low to high</option>
                <option value="price-high">Price: high to low</option>
              </select>
            </label>
          </div>

          {filteredProducts.length ? (
            <div className="grid grid-cols-2 gap-3 sm:gap-5 lg:grid-cols-4">
              {filteredProducts.map((product) => {
                const liked = wishlist.includes(product.id);
                return (
                  <motion.article layout key={product.id}>
                    <Card className="group h-full overflow-hidden rounded-2xl border-slate-200 bg-white shadow-sm transition hover:-translate-y-1 hover:shadow-xl">
                      <div className="relative aspect-square overflow-hidden bg-slate-100">
                        <img src={product.image} alt={product.title} className="h-full w-full object-cover transition duration-500 group-hover:scale-105" loading="lazy" />
                        {product.badge && <span className="absolute left-3 top-3 rounded-full bg-slate-950 px-3 py-1 text-[10px] font-bold uppercase tracking-wide text-white">{product.badge}</span>}
                        <button
                          type="button"
                          aria-label={liked ? `Remove ${product.title} from wishlist` : `Add ${product.title} to wishlist`}
                          aria-pressed={liked}
                          onClick={() => toggleWishlist(product.id)}
                          className="absolute right-3 top-3 grid h-10 w-10 place-items-center rounded-full bg-white/90 text-slate-700 shadow-sm backdrop-blur transition hover:scale-105 hover:text-orange-600 focus:outline-none focus:ring-2 focus:ring-orange-500"
                        >
                          <Heart className={`h-5 w-5 ${liked ? "fill-orange-500 text-orange-500" : ""}`} />
                        </button>
                      </div>
                      <CardContent className="flex h-[210px] flex-col p-3 sm:p-5">
                        <p className="text-[10px] font-bold uppercase tracking-wider text-slate-400 sm:text-xs">{product.category}</p>
                        <h3 className="mt-1 line-clamp-2 text-sm font-bold leading-snug sm:text-base">{product.title}</h3>
                        <div className="mt-2 flex items-center gap-1 text-xs text-slate-500">
                          <Star className="h-4 w-4 fill-amber-400 text-amber-400" />
                          <span className="font-bold text-slate-700">{product.rating}</span>
                          <span>({product.reviews})</span>
                        </div>
                        <div className="mt-auto">
                          <div className="mb-3 flex flex-wrap items-baseline gap-2">
                            <span className="text-base font-black sm:text-xl">{formatMoney(product.price)}</span>
                            {product.oldPrice && <span className="text-xs text-slate-400 line-through sm:text-sm">{formatMoney(product.oldPrice)}</span>}
                          </div>
                          <Button onClick={() => addToCart(product)} className="h-10 w-full rounded-xl bg-slate-950 px-2 text-xs font-bold text-white hover:bg-orange-500 sm:text-sm">
                            <ShoppingBag className="mr-1.5 h-4 w-4" /> Add to cart
                          </Button>
                        </div>
                      </CardContent>
                    </Card>
                  </motion.article>
                );
              })}
            </div>
          ) : (
            <div className="rounded-3xl border border-dashed border-slate-300 bg-white px-6 py-20 text-center">
              <Search className="mx-auto h-10 w-10 text-slate-300" />
              <h3 className="mt-4 text-lg font-bold">No matching products</h3>
              <p className="mt-2 text-sm text-slate-500">Try a different search term or clear the selected category.</p>
              <Button onClick={() => { setQuery(""); setCategory("All"); }} variant="outline" className="mt-5 rounded-full">Clear filters</Button>
            </div>
          )}
        </section>

        <section className="px-4 py-10 sm:px-6 lg:px-8">
          <div className="mx-auto flex max-w-7xl flex-col items-center justify-between gap-7 rounded-[2rem] bg-orange-500 px-6 py-10 text-white sm:px-10 lg:flex-row">
            <div>
              <p className="text-sm font-bold uppercase tracking-widest text-orange-100">Member updates</p>
              <h2 className="mt-2 text-3xl font-black">Useful offers, no clutter.</h2>
              <p className="mt-2 max-w-xl text-orange-50">Subscribe for product launches and occasional discounts.</p>
            </div>
            <form onSubmit={subscribe} className="flex w-full max-w-xl flex-col gap-3 sm:flex-row">
              <label className="sr-only" htmlFor="newsletter-email">Email address</label>
              <input id="newsletter-email" type="email" value={email} onChange={(event) => setEmail(event.target.value)} placeholder="you@example.com" className="h-12 min-w-0 flex-1 rounded-full border border-white/30 bg-white px-5 text-slate-950 outline-none placeholder:text-slate-400 focus:ring-4 focus:ring-orange-200" />
              <Button type="submit" className="h-12 rounded-full bg-slate-950 px-7 font-bold text-white hover:bg-slate-800">Subscribe</Button>
            </form>
          </div>
        </section>
      </main>

      <footer className="mt-12 border-t border-slate-200 bg-white">
        <div className="mx-auto grid max-w-7xl gap-8 px-4 py-12 sm:grid-cols-2 sm:px-6 lg:grid-cols-4 lg:px-8">
          <div className="sm:col-span-2">
            <div className="flex items-center gap-2 text-xl font-black"><span className="grid h-9 w-9 place-items-center rounded-xl bg-orange-500 text-white">N</span>Nexus<span className="-ml-2 text-orange-500">Shop</span></div>
            <p className="mt-4 max-w-md text-sm leading-6 text-slate-500">A clear, responsive storefront designed to make product discovery and cart management simple on every device.</p>
          </div>
          <div><h2 className="font-bold">Shop</h2><div className="mt-4 space-y-3 text-sm text-slate-500"><a className="block hover:text-orange-600" href="#categories">Categories</a><a className="block hover:text-orange-600" href="#products">All products</a><a className="block hover:text-orange-600" href="#benefits">Delivery and returns</a></div></div>
          <div><h2 className="font-bold">Need help?</h2><div className="mt-4 space-y-3 text-sm text-slate-500"><p className="flex items-center gap-2"><Headphones className="h-4 w-4" /> Customer support</p><p>Privacy</p><p>Terms</p></div></div>
        </div>
        <div className="border-t border-slate-200 py-5 text-center text-xs text-slate-400">© {new Date().getFullYear()} NexusShop. Demo storefront.</div>
      </footer>

      <AnimatePresence>
        {menuOpen && (
          <>
            <motion.button type="button" aria-label="Close navigation" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} onClick={() => setMenuOpen(false)} className="fixed inset-0 z-50 bg-slate-950/45 backdrop-blur-sm" />
            <motion.aside initial={{ x: "-100%" }} animate={{ x: 0 }} exit={{ x: "-100%" }} transition={{ type: "spring", damping: 28, stiffness: 280 }} className="fixed inset-y-0 left-0 z-50 w-[85%] max-w-sm bg-white p-5 shadow-2xl" aria-label="Mobile navigation">
              <div className="flex items-center justify-between"><span className="text-xl font-black">Nexus<span className="text-orange-500">Shop</span></span><IconButton label="Close navigation" onClick={() => setMenuOpen(false)}><X className="h-5 w-5" /></IconButton></div>
              <nav className="mt-8 space-y-2">
                {[["Home", "#home"], ["Categories", "#categories"], ["Shop", "#products"], ["Benefits", "#benefits"]].map(([label, href]) => <a key={label} href={href} onClick={() => setMenuOpen(false)} className="flex items-center justify-between rounded-xl px-4 py-4 font-bold text-slate-700 hover:bg-orange-50 hover:text-orange-600">{label}<ArrowRight className="h-4 w-4" /></a>)}
              </nav>
            </motion.aside>
          </>
        )}
      </AnimatePresence>

      <AnimatePresence>
        {cartOpen && (
          <>
            <motion.button type="button" aria-label="Close cart" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} onClick={() => setCartOpen(false)} className="fixed inset-0 z-50 bg-slate-950/45 backdrop-blur-sm" />
            <motion.aside initial={{ x: "100%" }} animate={{ x: 0 }} exit={{ x: "100%" }} transition={{ type: "spring", damping: 28, stiffness: 280 }} className="fixed inset-y-0 right-0 z-50 flex w-full max-w-md flex-col bg-white shadow-2xl" aria-label="Shopping cart">
              <div className="flex items-center justify-between border-b border-slate-200 p-5"><div><h2 className="text-xl font-black">Your cart</h2><p className="text-sm text-slate-500">{cartCount} {cartCount === 1 ? "item" : "items"}</p></div><IconButton label="Close cart" onClick={() => setCartOpen(false)}><X className="h-5 w-5" /></IconButton></div>
              <div className="flex-1 overflow-y-auto p-5">
                {cartItems.length ? <div className="space-y-4">{cartItems.map((item) => <div key={item.id} className="flex gap-3 rounded-2xl border border-slate-200 p-3"><img src={item.image} alt="" className="h-20 w-20 rounded-xl object-cover" /><div className="min-w-0 flex-1"><h3 className="truncate text-sm font-bold">{item.title}</h3><p className="mt-1 text-sm font-black">{formatMoney(item.price)}</p><div className="mt-2 flex items-center justify-between"><div className="flex items-center rounded-full border border-slate-200"><button type="button" aria-label={`Decrease ${item.title} quantity`} onClick={() => changeQuantity(item.id, -1)} className="p-2 hover:text-orange-600"><Minus className="h-3 w-3" /></button><span className="min-w-7 text-center text-xs font-bold">{item.quantity}</span><button type="button" aria-label={`Increase ${item.title} quantity`} onClick={() => changeQuantity(item.id, 1)} className="p-2 hover:text-orange-600"><Plus className="h-3 w-3" /></button></div><button type="button" aria-label={`Remove ${item.title}`} onClick={() => setCart((current) => { const next = { ...current }; delete next[item.id]; return next; })} className="rounded-full p-2 text-slate-400 hover:bg-red-50 hover:text-red-600"><Trash2 className="h-4 w-4" /></button></div></div></div>)}</div> : <div className="grid h-full place-items-center text-center"><div><ShoppingBag className="mx-auto h-12 w-12 text-slate-300" /><h3 className="mt-4 text-lg font-bold">Your cart is empty</h3><p className="mt-2 text-sm text-slate-500">Add an item to see it here.</p><Button onClick={() => { setCartOpen(false); document.getElementById("products")?.scrollIntoView({ behavior: "smooth" }); }} className="mt-5 rounded-full bg-orange-500 hover:bg-orange-600">Start shopping</Button></div></div>}
              </div>
              {cartItems.length > 0 && <div className="border-t border-slate-200 p-5"><div className="mb-4 flex items-center justify-between"><span className="text-sm text-slate-500">Subtotal</span><span className="text-xl font-black">{formatMoney(subtotal)}</span></div><Button onClick={() => setNotice("Checkout is ready for backend integration")} className="h-12 w-full rounded-full bg-orange-500 font-bold hover:bg-orange-600">Proceed to checkout <ArrowRight className="ml-2 h-4 w-4" /></Button><p className="mt-3 text-center text-xs text-slate-400">Shipping and taxes are calculated at checkout.</p></div>}
            </motion.aside>
          </>
        )}
      </AnimatePresence>

      <AnimatePresence>
        {notice && (
          <motion.div role="status" aria-live="polite" initial={{ opacity: 0, y: 30 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 20 }} className="fixed bottom-5 left-1/2 z-[60] flex -translate-x-1/2 items-center gap-2 rounded-full bg-slate-950 px-5 py-3 text-sm font-semibold text-white shadow-2xl">
            <Check className="h-4 w-4 text-emerald-400" /> {notice}
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
