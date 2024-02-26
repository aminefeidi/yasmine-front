import {ComponentFixture, TestBed} from '@angular/core/testing';

import {ListuserComponent} from './listuser.component';

describe('ListuserComponent', () => {
  let component: ListuserComponent;
  let fixture: ComponentFixture<ListuserComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ListuserComponent]
    });
    fixture = TestBed.createComponent(ListuserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
