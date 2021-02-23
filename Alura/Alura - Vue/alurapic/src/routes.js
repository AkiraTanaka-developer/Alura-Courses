// const Cadastro = () => System.import('./componentes/cadastro/cadastro.vue')
import Cadastro from './componentes/cadastro/cadastro.vue'
import Home from './componentes/home/Home.vue'

export const routes = [
    {path: '', name:'home', component: Home, titulo:'Home', menu: true},
    {path: '/cadastro', name: 'cadastro', component: Cadastro, titulo: 'Cadastro', menu: true},
    {path: '/cadastro/:id', name: 'altera', component: Cadastro, titulo: 'Cadastro', menu: false},
    {path: '*', component: Home, menu: false}
];
