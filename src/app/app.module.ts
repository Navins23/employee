import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EmployeedetailComponent } from './employeedetail/employeedetail.component';
import { EmployeeformComponent } from './employeeform/employeeform.component';
import {EmployeeserviceService} from './employeeservice.service'

@NgModule({
  declarations: [
    AppComponent,
    EmployeedetailComponent,
    EmployeeformComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [EmployeeserviceService],
  bootstrap: [AppComponent]
})
export class AppModule { }
