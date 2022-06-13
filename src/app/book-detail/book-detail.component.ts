import { Component, OnInit } from '@angular/core';

export interface detailsTable {
  language: string;
  publisher: string;
  isbnNumber: number;
  datePublished: number;
}

const dataInfo: detailsTable[] = [
  { language: 'English', publisher: 'Zebra Publishing', isbnNumber: 978 - 99945 - 69 - 64 - 9, datePublished: 19 / 6 / 2007 }
]

@Component({
  selector: 'app-book-detail',
  templateUrl: './book-detail.component.html',
  styleUrls: ['./book-detail.component.css']
})
export class BookDetailComponent implements OnInit {
  [x: string]: any;
  constructor() { }




  ngOnInit(): void {
  }
  displayedColumns: string[] = ['language', 'publisher', 'isbnNumber', 'datePublished'];
  dataSource = this['detailsTable'];
}
