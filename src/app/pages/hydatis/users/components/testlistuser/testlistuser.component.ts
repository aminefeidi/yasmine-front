import {Component} from '@angular/core';
import {TestUserService} from "../../services/test-user.service";
import {TestModel} from "../../models/test.model";

@Component({
  selector: 'app-testlistuser',
  templateUrl: './testlistuser.component.html',
  styleUrls: ['./testlistuser.component.scss']
})
export class TestListuserComponent {
  user: TestModel;

  constructor(private service: TestUserService) {
  }

  ngOnInit() {
    this.service.testMethod().subscribe(value => this.user = value);
  }


}
