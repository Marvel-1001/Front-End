import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-addbook',
  templateUrl: './addbook.component.html',
  styleUrls: ['./addbook.component.css']
})
export class AddbookComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  imageOne = 'assets/books/imgOne.png';
  imageAlt = 'Book';

  imageTwo = 'assets/books/img2.png';
  
  imageThree = 'assets/books/imgThree.png';
  
  imageFour = 'assets/books/imgFour.png';

  imageFive = 'assets/books/imgFive.png';

  imageSix = 'assets/books/imgSix.png';

  imageSeven = 'assets/books/imgSeven.png';

  imageEight = 'assets/books/imgEight.png';
}
