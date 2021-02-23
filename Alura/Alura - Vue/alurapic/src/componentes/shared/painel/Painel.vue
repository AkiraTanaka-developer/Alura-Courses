<template>
    <div class="painel">
      <h2 class="painel-titulo" @dblclick="visivel = !visivel">{{ titulo }}</h2>
      <transition name="painel-fade">
        <div class="painel-conteudo" v-show="visivel">
            <slot></slot>
        </div>
      </transition>
    </div>
</template>

<script>
export default {
    props: ['titulo'],

    data() {

      return {

        visivel: true

      }

    }

}
</script>

<style scoped>
    .painel {
      padding: 0 auto;
      border: solid 1px grey;
      display:inline-block;
      margin: 10px;
      box-shadow: 3px 3px 5px rgb(11, 110, 240);
      width: 200px;
      height: 100%;
      vertical-align: top;
      text-align: center;
      background: black;
      border-radius: 8px;
    }

    .painel .painel-titulo{
      text-align: center;
      border: solid 2px;
      background: rgb(11, 143, 187);
      margin: 0 0 15px ;
      padding: 10px;
      text-transform: uppercase;
      border-radius: 8px;
      
    }

    * {
        /* box-shadow: 5px 5px 5px; */
    }

    .painel-fade-enter, .painel-fade-leave-active {

      opacity: 0;

    }

    .painel-fade-enter-active, .painel-fade-leave-active {

      transition: opacity .4s;
    }

    .painel-conteudo {

      overflow: hidden;
    }

    
</style>
