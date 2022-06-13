import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { BookContentComponent } from './book-content/book-content.component';
import { BookDetailComponent } from './book-detail/book-detail.component';
import { BooksComponent } from './books/books.component';
import { BookshelfComponent } from './bookshelf/bookshelf.component';
import { HomeComponent } from './home/home.component';
import { SignInComponent } from './sign-in/sign-in.component';

const routes: Routes = [
  {
    path:'home', component:HomeComponent
  },

  {
    path:'books', component:BooksComponent
  },

  {
    path:'book-detail', component:BookDetailComponent
  },
  { 
    path: 'bookshelf', component:BookshelfComponent
  },
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
