import { Component, OnInit } from '@angular/core';
import{EmployeeserviceService} from '../employeeservice.service'
@Component({
  selector: 'app-employeedetail',
  templateUrl: './employeedetail.component.html',
  styleUrls: ['./employeedetail.component.css']
})
export class EmployeedetailComponent implements OnInit {
  test;
  constructor(private es:EmployeeserviceService) { }
  ngOnInit(){
    this.test=this.es.display();
  }
 
}
