<template>
    <div>
        <h1 class="centralizado">Cadastro</h1>
        <h2 class="centralizado">{{ foto.titulo }}</h2>

        <h2 v-if="foto._id" class="centralizado">Alterando</h2>
        <h2 v-else class="centralizado">Incluindo</h2>

        <form @submit.prevent="grava()">
            <div class="controle">
                <label for="titulo">Título</label>
                <input data-vv-as="Título" name="titulo" v-validate data-vv-rules ="required|min:3|max:30" id="titulo" autocomplete="off" v-model="foto.titulo">
                <span class="error" v-show="errors.has('titulo')">{{ errors.first('titulo') }}</span>
            </div>

            <div class="controle">
                <label for="url">URL</label>
                <input name="url" v-validate data-vv-rules="required" id="url" autocomplete="off" v-model="foto.url">
                <span class="error" v-show="errors.has('url')">{{ errors.first('url') }}</span>
                <imagem-responsiva v-show="foto.url" :url="foto.url" :titulo="foto.titulo"/>
            </div>

            <div class="controle">
                <label for="descricao">DESCRIÇÃO</label>
                <textarea id="descricao" autocomplete="off" v-model="foto.descricao">
                </textarea>
            </div>

            <div class="centralizado">
                <meu-botao rotulo="GRAVAR" tipo="submit"></meu-botao>
                <router-link :to="{ name : 'home'}"><meu-botao rotulo="VOLTAR" tipo="button"/></router-link>
                </div>
        </form>
    </div>
</template>

<script>

import ImagemResponsiva from '../shared/imagem-responsiva/imagemResponsiva.vue';
import Botao from '../shared/botao/Botao.vue'
import Foto from '../../domain/foto/foto'
import FotoService from '../../domain/foto/FotoService'

export default {

    components: {

        'imagem-responsiva': ImagemResponsiva,
        'meu-botao': Botao 
    }, 

    data() {

        return{

            foto: new Foto(),
            id: this.$route.params.id
        }
    },

    methods: {

        grava() {
            this.$validator
                .validateAll()
                .then(success => {
                    if(success) {
                        this.service
                            .cadastra(this.foto)
                            .then(() => {
                    if(this.id) this.$router.push({ name: 'home'})
                    this.foto = new Foto()
                    }, err => console.log(err));

                    }
                });
        }
    },

    created() {
        
        this.service = new FotoService(this.$resource);

        if(this.id) {
            this.service
                .busca(this.id)
                .then(foto =>  this.foto = foto);
        }
    }
}
</script>

<style scoped>
    .centralizado {
        text-align: center;
    }

    .controle {
        font-size: 1.2em;
        margin-bottom: 20px;
    }

    .controle label {
        display: block;
        font-weight: bold;
        margin-left: 2.5%;
    }

    .controle label + input, .controle textarea { 
        width: 95%;
        font-size: inherit;
        border-radius:5px;
        margin-right:2.5%;
        margin-left:2.5%;
    }

    .error {
        display: block;
        margin-top: .5rem;
        margin-left: 2.5%;
        color: red;
        font-weight: bold;
    }
</style>

