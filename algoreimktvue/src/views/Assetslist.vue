<template>
  <div id="fh5co-page">
    <header id="fh5co-header" role="banner">
      <div class="container">
        <div class="row">
          <div class="header-inner">
            <h1>
              <router-link to="/"
                >AlgoREI Real Estate Inversiones <span>.</span></router-link
              >
            </h1>
            <nav role="navigation">
              <ul>
                <li><router-link to="/">Home</router-link></li>
                <li><router-link to="/about">About</router-link></li>
                <li><a href="buy.html">Invertir</a></li>
                <li><a href="rent.html">Vender</a></li>
                <li><a href="properties.html">Propiedades</a></li>
                <li class="call">
                  <a href="tel://123456789"
                    ><i class="icon-phone"></i> +1 123 456 789</a
                  >
                </li>
                <li class="cta"><a href="contact.html">Contact us</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>
    <div
      class="fh5co-page-title"
      style="background-image: url(images/slide_6.jpg)"
    >
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1><span class="colored">Listado NFT's </span> Algo ASA</h1>
          </div>
        </div>
      </div>
    </div>
    <p></p>
    <p></p>

    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h3>ASA Informacion.</h3>
          <ul class="contact-info"></ul>
        </div>

        <div
          class="col-md-8 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0"
        >
          <div class="row" v-for="(ast, index) in assets" :key="index">
            <div class="col-md-6">
              <div class="form-group">
                ASA ID : {{ ast.id }}
                <p></p>
                ASA Name: {{ ast.name }}
                <p></p>
                ASA Unit Name: {{ ast['unit-name'] }} 
                <p></p>
                ASA Amount: {{ ast.amount }}
                <p></p>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <input
                  value="Send Message"
                  class="btn btn-primary"
                  type="submit"
                  @click="createPost()"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer id="fh5co-footer" role="contentinfo">
      <div class="container">
        <div class="col-md-3 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
          <h3>About Us</h3>
          <p>
            Far far away, behind the word mountains, far from the countries
            Vokalia and Consonantia, there live the blind texts.
          </p>
          <p>
            <a href="#" class="btn btn-primary btn-outline with-arrow btn-sm"
              >I'm button <i class="icon-arrow-right"></i
            ></a>
          </p>
        </div>
        <div
          class="col-md-6 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0"
        >
          <h3>Our Services</h3>
          <ul class="float">
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Branding &amp; Identity</a></li>
            <li><a href="#">Free HTML5</a></li>
            <li><a href="#">HandCrafted Templates</a></li>
          </ul>
          <ul class="float">
            <li><a href="#">Free Bootstrap Template</a></li>
            <li><a href="#">Free HTML5 Template</a></li>
            <li><a href="#">Free HTML5 &amp; CSS3 Template</a></li>
            <li><a href="#">HandCrafted Templates</a></li>
          </ul>
        </div>

        <div
          class="col-md-2 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0"
        >
          <h3>Follow Us</h3>
          <ul class="fh5co-social">
            <li>
              <a href="#"><i class="icon-twitter"></i></a>
            </li>
            <li>
              <a href="#"><i class="icon-facebook"></i></a>
            </li>
            <li>
              <a href="#"><i class="icon-google-plus"></i></a>
            </li>
            <li>
              <a href="#"><i class="icon-instagram"></i></a>
            </li>
          </ul>
        </div>

        <div class="col-md-12 fh5co-copyright text-center">
          <p>
            &copy; 2016 Free HTML5 template. All Rights Reserved.
            <span
              >Designed with <i class="icon-heart"></i> by
              <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a>
              Demo Images by
              <a href="http://unsplash.com/" target="_blank">Unsplash</a></span
            >
          </p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  name: "invertir",
  data() {
    return {
      post: {},
      data: {},
      assets: [],
    };
  },
  async created() {
    // GET request using fetch with async/await
    let urlParams =
      "LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE?extended";
    let url = "http://localhost:3000/accounts/" + urlParams;
    const fetchOptions = {
      method: "GET",
      cache: "default",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    };
    const response = await fetch(url, fetchOptions);
    const data = await response.json();
    this.assets = data.assets;
    console.log(this.assets);
  },
  methods: {},
};
</script>
