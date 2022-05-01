import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators} from '@angular/forms';

@Component({
  selector: 'app-bookshelf',
  templateUrl: './bookshelf.component.html',
  styleUrls: ['./bookshelf.component.css']
})
export class BookshelfComponent implements OnInit {
  bookForm = new FormGroup({
    title: new FormControl('', [Validators.required]),
    author: new FormControl('', [Validators.required]),
    synopsis: new FormControl('', [Validators.required])
  });

  get f(){
    return this.bookForm.controls;
  }

  get title(){
    return this.bookForm.get('title')
  }

  get author(){
    return this.bookForm.get('author')
  }

  get synopsis(){
    return this.bookForm.get('synopsis')
  }

  contributors:Array<number> = new Array<number>();

  constructor() {

   }

  ngOnInit(): void {
    this.contributors.push(1);
    this.contributors.push(1);
  }

  onSubmit(){
    console.log('Submitted');
  }

  addAuthor(flag:string){

    switch(flag) {
      case "Add" :
    this.contributors.push(1);
      break;

      case "Remove" :
        this.contributors.pop();
      break;

    }

    console.log("hi");;

  }

}

