import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from 'src/app/home/home.component';
import { LoginComponent } from 'src/app/usuario/login/login.component';
import { RegistroComponent } from 'src/app/usuario/registro/registro.component';
import { PerfilComponent } from 'src/app/usuario/perfil/perfil.component';
import { AppsComponent } from './apps/apps.component';
import { PostComponent } from './post/post.component';


const routes: Routes = [

  { path: '', component: HomeComponent },
  { path: 'usuario/login', component: LoginComponent },
  { path: 'usuario/registro', component: RegistroComponent },
  { path: 'usuario/perfil', component: PerfilComponent}, 
  { path: 'apps', component: AppsComponent},
  {path: 'post', component: PostComponent}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
