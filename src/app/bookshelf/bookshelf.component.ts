import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators} from '@angular/forms';

@Component({
  selector: 'app-bookshelf',
  templateUrl: './bookshelf.component.html',
  styleUrls: ['./bookshelf.component.css']
})
export class BookshelfComponent implements OnInit {
  form = new FormGroup({
    title: new FormControl('', [Validators.required, Validators.minLength(3)]),
  });

  get f(){
    return this.form.controls;
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

