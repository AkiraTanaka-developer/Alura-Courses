<template>
  <div class="corpo">
  
    <meu-menu :rotas="routes"/>

    <transition name="pagina">
        <router-view></router-view>
    </transition>
  </div>
</template>

<script>
import { routes } from './routes';
import Menu from './componentes/shared/menu/Menu.vue';

export default {

  components: {
    'meu-menu' : Menu
  },

  data() {

    return{
      routes: routes.filter( route => route.menu)
    }
  }
}
</script>

<style scoped>

    .corpo{
      font-family: Helvetica, sans-serif;
      width: 100%;
      color: white;
      margin: 0 auto;
      background: black;
    }

    .pagina-enter, .pagina-leave-active {

      opacity: 0;

    }

    .pagina-enter-active, .pagina-leave-active {

      transition: opacity .4s;
    }
</style>
