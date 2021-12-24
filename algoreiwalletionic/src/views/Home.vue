<template>
  <ion-page>
    <ion-content class="ion-padding">
      <h1 class="greeting">
        Hi, John!
      </h1>
      <p class="greeting-tag">
       AlgoREI Real Estate Inversiones 
      </p>

    <ion-card>
        <ion-item>
      <ion-avatar slot="start">
        <img src="assets/img/profile1.jpg">
      </ion-avatar>
      <ion-label>
        <h3>John Doe</h3>
        <p>Dec 10, 2019</p>
        <p> {{ acctAddr }} </p>
      </ion-label>
    </ion-item>

      
      <ion-card-header>
        <ion-card-title>Account Holdings </ion-card-title>
      </ion-card-header>
      <ion-card-content>

        <ion-grid>  
        <ion-row>
          <ion-col>
            Assets 
          </ion-col>
          <ion-col>
            Balance
          </ion-col>        
        </ion-row>
  
          <ion-row>
            <ion-col>
              Algos
            </ion-col>
            <ion-col>
              {{ amountBalance }}
            </ion-col>
          </ion-row>
        </ion-grid>
        
                
        <ion-grid>  
            <ion-row>
              <ion-col>
                Name  
              </ion-col>
              <ion-col>
                Token Name NFT
              </ion-col>   
               <ion-col>
                Balance
              </ion-col>             
            </ion-row>
      
              <ion-row v-for="(asset, index)  of assets" :key="index">
                <ion-col>
                  {{ asset.name }}
                </ion-col>                
                 <ion-col>
                  {{ asset['unit-name']}}
                </ion-col>
                <ion-col>
                  {{ asset.amount }}
                </ion-col>
              </ion-row>
          </ion-grid>




      </ion-card-content>


    <ion-footer>
      <ion-row>
        <ion-col center text-center>
          <button>
            <ion-icon :icon="thumbsUp" ></ion-icon>
            <div>1.5k Likes</div>
          </button>
        </ion-col>
        <ion-col center text-center>
          <button>
            <ion-icon :icon="documentText"></ion-icon>
            <div>4 Comments</div>
          </button>
        </ion-col>
        <ion-col center text-center>
          <button>
            <ion-icon :icon="time"></ion-icon>
            <div>11h ago</div>
          </button>
        </ion-col>
      </ion-row>
    </ion-footer>
  </ion-card>
      <p></p><p></p>

      <SectionDivider data="Transactions" />

      <RecentList :data="recentList" />
    </ion-content>
  </ion-page>
</template>

<script>


import { 
  IonPage, 
  IonContent, 
  IonCard,
  IonCol,
  IonFooter,
  IonRow,
  IonAvatar,
  IonLabel,
  IonItem,
  IonCardTitle,
  IonCardHeader,
  IonCardContent,
  IonIcon,
  IonGrid,

} from "@ionic/vue";

import RecentList from "../components/RecentList";

import SectionDivider from "../components/SectionDivider";
import axios from "axios";

import { documentText, time, thumbsUp } from "ionicons/icons";

export default {
  name: "home",
  title: "Home",
  requiresAuth: false,
  components: {
    IonPage,
    RecentList,
    SectionDivider,
    IonContent,
    IonCard,
    IonCol,
    IonFooter,
    IonRow,
    IonAvatar,
    IonLabel,
    IonItem,
    IonCardTitle,
    IonCardHeader,
    IonCardContent,
    IonIcon,
    IonGrid,
  },
  setup() {
    return{
      documentText, time, thumbsUp
    }
  },
  data() {
    return {
      acctAddr: '',
      amountBalance : 0,
      assets : [],
      recentList: [
        {
          name: "Inversion 1",
          cost: "Algos 140.20",
          description: "Today",
          color: "#36AEEA"
        },
        {
          name: "Inversion 2",
          cost: "Algos 98.20",
          description: "Yesterday",
          color: "#226391"
        },
        {
          name: "Inverson 3",
          cost: "Algos 98.20",
          description: "Jan 23, 2021",
          color: "#797A7C"
        },
        {
          name: "Inversion 4",
          cost: "Algos 44.20",
          description: "Jan 18, 2021",
          color: "#D8373F"
        },
      ],
    };
  },
  mounted(){
    this.initFetch();
  },
  methods: {
    async initFetch() {
      // Get acct balance and assets 
      let acct = 'LQF2KGUQE5PWXGZIXEJVWMPDTKC6LG4F2L3FBZPNZNODXRRXQYCDJ5INUE'
      let url  = 'http://localhost:3000/accounts/'
      const acctInfo = await axios.get(url + acct + '?extended');
      // Populate movie list
      this.amount = acctInfo.data.amount;
      // Get total number of assets ASA's 
      this.assets = acctInfo.data.assets ;
      this.acctAddr = acctInfo.data.address
      console.log(this.assets);
      console.log("--> acctInfo ", acctInfo) ;
      this.amountBalance = new Intl.NumberFormat('en', {minimumFractionDigits: 6}).format( acctInfo.data.amount/100000.000000);
      
      
    },
    cardDetails() {
      this.$router.push("/card-details");
    }
  }
};
</script>

<style lang="scss" scoped>
ion-content {
  --background: var(--brand-secondary);
}

h1.greeting {
  font-size: 24px;
  color: #000000;
}

p.greeting-tag {
  color: var(--brand-tertiary);
  font-style: normal;
  font-weight: 500;
  font-size: 16px;
  line-height: 23px;
}

.card-img {
  margin: 30px 0;
}
</style>
