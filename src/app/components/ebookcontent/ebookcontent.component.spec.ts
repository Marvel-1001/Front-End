import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EbookcontentComponent } from './ebookcontent.component';

describe('EbookcontentComponent', () => {
  let component: EbookcontentComponent;
  let fixture: ComponentFixture<EbookcontentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EbookcontentComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EbookcontentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
