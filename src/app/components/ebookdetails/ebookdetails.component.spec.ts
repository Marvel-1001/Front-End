import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EbookdetailsComponent } from './ebookdetails.component';

describe('EbookdetailsComponent', () => {
  let component: EbookdetailsComponent;
  let fixture: ComponentFixture<EbookdetailsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EbookdetailsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EbookdetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
