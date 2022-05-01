import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AboutUsComponent } from './about-us/about-us.component';
import { AddbookComponent } from './addbook/addbook.component';
import { ContactUsComponent } from './contact-us/contact-us.component';
import { HomeComponent } from './home/home.component';
import { BookshelfComponent } from './bookshelf/bookshelf.component';
import { BookContentComponent } from './book-content/book-content.component';
import { SignInComponent } from './sign-in/sign-in.component';

const routes: Routes = [
  {
    path:'home', component:HomeComponent
  },
  {
    path: 'addbook', component:AddbookComponent
  },
  {
    path:'about-us', component:AboutUsComponent
  },
  {
    path:'contact-us', component:ContactUsComponent
  },
  {
    path: 'search/:searchTerm', component:HomeComponent
  },
  { 
    path: 'bookshelf', component:BookshelfComponent},
  { 
    
    path: 'book-content', component:BookContentComponent
  },
  {
    path: 'sign-in', component:SignInComponent
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
