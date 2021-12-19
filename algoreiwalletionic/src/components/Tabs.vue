<template>
  <ion-page>
    <ion-tabs>
      <ion-tab-bar slot="bottom">
        <ion-tab-button tab="" href="/home">
          <ion-icon :icon="home" />
        </ion-tab-button>
          
        <ion-tab-button tab="" href="#">
          <ion-icon :icon="cardOutline" />
        </ion-tab-button>

<ion-tab-button tab="" href="">
<div style="color: green">Mandar</div>
</ion-tab-button>
<ion-tab-button tab="" href="">
<div style="color: green">Recibir</div>
</ion-tab-button>
        
       <ion-tab-button tab="" href="#">
          <ion-icon :icon="wallet" />
        </ion-tab-button>

       <ion-tab-button tab="" href="#">
         <ion-icon :icon="chatbubble" />
       </ion-tab-button>

        
        
      </ion-tab-bar>
      


      <ion-fab  vertical="bottom" horizontal="center" edge slot="fixed">
        <ion-fab-button>
          <ion-icon :icon="send"></ion-icon>       
        </ion-fab-button>
         <ion-fab-button>
        <ion-icon :icon="bag"></ion-icon>
        </ion-fab-button>
      </ion-fab>
      
    
                    

    </ion-tabs>
  </ion-page>
</template>

<script>
import { 
  IonPage,
  IonTabBar, 
  IonTabButton, 
  IonTabs, 
  IonIcon,
  IonFab,
  IonFabButton
} from '@ionic/vue';
import { home, cardOutline, personCircleOutline, send, bag, wallet, chatbubble } from 'ionicons/icons';

export default {
  name: 'Tabs',
  components: { 
    IonPage,
    IonTabs, 
    IonTabBar, 
    IonTabButton, 
    IonIcon,
    IonFab,
    IonFabButton 
  },
  setup() {
    return {
      home, 
      personCircleOutline,
      cardOutline,
      send,
      bag,
      wallet,
      chatbubble
    }
  }
}
</script>

<style lang="scss" scoped>
ion-tab-bar {
  --background: #ffffff;
  height: 60px;

  ion-icon {
    font-size: 35px;
    color: var(--brand-primary);
  }

  span {
    font-weight: 500;
    font-size: 14px;
  }
}

ion-fab-button {
 --background: var(--brand-primary);
  bottom: 55px;
  margin-right: 15px;
  position: relative;
  transform: rotate(44deg);
  --border-radius: 15px;
  border: 3px solid #fff;
  display: inline-block !important;
  ion-icon {
    transform: rotate(-44deg);
  }
}

ion-fab{
    display: flex;
    width: 100%;
    flex-direction: row;
    justify-content: center;
    display: inline-block !important;
    margin-inline-start: -58;
  }

ion-tab-button{
font-size: 20px;
--background-focused: #a0a;
--color-selected: #a0a;
--padding-end: 0px;
--padding-start: 10px;
--padding-bottom: 0px;
--margin-left:0px;
--margin-right:0px;
max-width:100px;
ion-icon{
    font-size: 27.5px;
 }
}

.fab-vertical-bottom.fab-edge {
  bottom: -10px !important;
}

</style>
