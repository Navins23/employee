import { Injectable } from '@angular/core';


@Injectable({
  providedIn: 'root'
})
export class EmployeeserviceService {
  employeedetail=[
    {id:1,name:"navin",address:"kailali",contact:"9815550631"},
    {id:1,name:"navin",address:"kailali",contact:"9815550631"},
    {id:1,name:"navin",address:"kailali",contact:"9815550631"},
                 ]

  constructor() { }
  display(){
  return this.employeedetail;

  }
}
