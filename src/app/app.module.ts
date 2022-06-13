import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BooksComponent } from './books/books.component';
import { HomeComponent } from './home/home.component';
import { NavbarComponent } from './navbar/navbar.component';
import { BookDetailComponent } from './book-detail/book-detail.component';
import { AddbookComponent } from './addbook/addbook.component';
import { SignInComponent } from './sign-in/sign-in.component';

import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { BookshelfComponent } from './bookshelf/bookshelf.component';
import { BookContentComponent } from './book-content/book-content.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { FooterComponent } from './footer/footer.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import {MatInputModule} from '@angular/material/input';
import {MatTableModule} from '@angular/material/table';

import { HttpClientModule } from '@angular/common/http';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { AuthModule } from './auth/auth.module';
import { LandingComponent } from './landing/landing.component';
import { ValueComponent } from './value/value.component';
import { CarouselComponent } from './carousel/carousel.component';


@NgModule({
  declarations: [
    AppComponent,
    BooksComponent,
    HomeComponent,
    NavbarComponent,
    BookDetailComponent,
    AddbookComponent,
    BookshelfComponent,
    BookContentComponent,
    FooterComponent,
    SignInComponent,
    LandingComponent,
    ValueComponent,
    CarouselComponent
  ],
  imports: [
    BrowserModule,AppRoutingModule,MatIconModule,MatButtonModule,BrowserAnimationsModule,
    MatFormFieldModule,FormsModule,ReactiveFormsModule, NgbModule,MatInputModule,
    FontAwesomeModule, AuthModule,HttpClientModule,MatTableModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
