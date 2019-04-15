import { Component, OnInit } from '@angular/core';
import{EmployeeserviceService} from '../employeeservice.service';
@Component({
  selector: 'app-employeedetail',
  templateUrl: './employeedetail.component.html',
  styleUrls: ['./employeedetail.component.css']
})
export class EmployeedetailComponent implements OnInit {
  list;
  constructor(private es:EmployeeserviceService) { }
 
  ngOnInit(){this.es.display().subscribe(response=>{
                                                  this.list=response});
  }


 
  }
 

