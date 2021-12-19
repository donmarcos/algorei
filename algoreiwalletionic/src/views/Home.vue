<template>
  <ion-page>
    <ion-content class="ion-padding">
      <h1 class="greeting">
        Hi, User!
      </h1>
      <p class="greeting-tag">
       AlgoREI y sus Inversiones!
      </p>

      <img src="assets/img/card1.png" class="card-img" @click="cardDetails()" />

      

      <SectionDivider data="History" />

      <RecentList :data="recentList" />
    </ion-content>
  </ion-page>
</template>

<script>
import { 
  IonPage, 
  IonContent, 
} from "@ionic/vue";

import RecentList from "../components/RecentList";

import SectionDivider from "../components/SectionDivider";

export default {
  name: "home",
  title: "Home",
  requiresAuth: false,
  components: {
    IonPage,
    RecentList,
    SectionDivider,
    IonContent
  },
  data() {
    return {
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
  methods: {
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
