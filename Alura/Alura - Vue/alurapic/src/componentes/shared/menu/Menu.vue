<template>
    <nav>
        <ul class="menu">
            <li v-for="rota in rotas" >
                <router-link :to="rota.path ? rota.path : '/'">
                {{ rota.titulo }}
                </router-link>
            </li>
        </ul>
    </nav>

</template>

<script>
export default {

    props: {
        rotas: {
            type: Array,
            required: true
        }
    }
}

</script>

<style>
    .menu {
        padding: 2em;
    }

</style>