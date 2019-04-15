[33mcommit 94821704cc0164bdfd88943cdd033073bd056e3c[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31mnavin/master[m[33m)[m
Author: Navin Shahi <navinshahi66@gmail.com>
Date:   Mon Apr 15 00:26:10 2019 +0545

    pullfile.ts is added

[1mdiff --git a/src/app/pushfile.ts b/src/app/pushfile.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m

[33mcommit 7aae2207bf4039cf26212f1668ecd4d25ccb3c67[m[33m ([m[1;31mns/master[m[33m)[m
Author: Navin Shahi <navinshahi66@gmail.com>
Date:   Sun Apr 14 22:37:51 2019 +0545

    All the files of employee's are added

[1mdiff --git a/src/app/app.component.html b/src/app/app.component.html[m
[1mindex 0f3d9d8..f2f5979 100644[m
[1m--- a/src/app/app.component.html[m
[1m+++ b/src/app/app.component.html[m
[36m@@ -1,21 +1 @@[m
[31m-<!--The content below is only a placeholder and can be replaced.-->[m
[31m-<div style="text-align:center">[m
[31m-  <h1>[m
[31m-    Welcome to {{ title }}![m
[31m-  </h1>[m
[31m-  <img width="300" alt="Angular Logo" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNTAgMjUwIj4KICAgIDxwYXRoIGZpbGw9IiNERDAwMzEiIGQ9Ik0xMjUgMzBMMzEuOSA2My4ybDE0LjIgMTIzLjFMMTI1IDIzMGw3OC45LTQzLjcgMTQuMi0xMjMuMXoiIC8+CiAgICA8cGF0aCBmaWxsPSIjQzMwMDJGIiBkPSJNMTI1IDMwdjIyLjItLjFWMjMwbDc4LjktNDMuNyAxNC4yLTEyMy4xTDEyNSAzMHoiIC8+CiAgICA8cGF0aCAgZmlsbD0iI0ZGRkZGRiIgZD0iTTEyNSA1Mi4xTDY2LjggMTgyLjZoMjEuN2wxMS43LTI5LjJoNDkuNGwxMS43IDI5LjJIMTgzTDEyNSA1Mi4xem0xNyA4My4zaC0zNGwxNy00MC45IDE3IDQwLjl6IiAvPgogIDwvc3ZnPg==">[m
[31m-</div>[m
[31m-<h2>Here are some links to help you start: </h2>[m
[31m-<ul>[m
[31m-  <li>[m
[31m-    <h2><a target="_blank" rel="noopener" href="https://angular.io/tutorial">Tour of Heroes</a></h2>[m
[31m-  </li>[m
[31m-  <li>[m
[31m-    <h2><a target="_blank" rel="noopener" href="https://angular.io/cli">CLI Documentation</a></h2>[m
[31m-  </li>[m
[31m-  <li>[m
[31m-    <h2><a target="_blank" rel="noopener" href="https://blog.angular.io/">Angular blog</a></h2>[m
[31m-  </li>[m
[31m-</ul>[m
[31m-[m
[31m-<router-outlet></router-outlet>[m
[32m+[m[32m<app-employeedetail></app-employeedetail>[m
\ No newline at end of file[m
[1mdiff --git a/src/app/app.module.ts b/src/app/app.module.ts[m
[1mindex 2c3ba29..7670998 100644[m
[1m--- a/src/app/app.module.ts[m
[1m+++ b/src/app/app.module.ts[m
[36m@@ -3,16 +3,21 @@[m [mimport { NgModule } from '@angular/core';[m
 [m
 import { AppRoutingModule } from './app-routing.module';[m
 import { AppComponent } from './app.component';[m
[32m+[m[32mimport { EmployeedetailComponent } from './employeedetail/employeedetail.component';[m
[32m+[m[32mimport { EmployeeformComponent } from './employeeform/employeeform.component';[m
[32m+[m[32mimport {EmployeeserviceService} from './employeeservice.service'[m
 [m
 @NgModule({[m
   declarations: [[m
[31m-    AppComponent[m
[32m+[m[32m    AppComponent,[m
[32m+[m[32m    EmployeedetailComponent,[m
[32m+[m[32m    EmployeeformComponent[m
   ],[m
   imports: [[m
     BrowserModule,[m
     AppRoutingModule[m
   ],[m
[31m-  providers: [],[m
[32m+[m[32m  providers: [EmployeeserviceService],[m
   bootstrap: [AppComponent][m
 })[m
 export class AppModule { }[m
[1mdiff --git a/src/app/employeedetail/employeedetail.component.css b/src/app/employeedetail/employeedetail.component.css[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/src/app/employeedetail/employeedetail.component.html b/src/app/employeedetail/employeedetail.component.html[m
[1mnew file mode 100644[m
[1mindex 0000000..34db65d[m
[1m--- /dev/null[m
[1m+++ b/src/app/employeedetail/employeedetail.component.html[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m<table>[m
[32m+[m[32m  <tr>[m
[32m+[m[32m  <th>Id</th>[m
[32m+[m[32m  <th>Name</th>[m
[32m+[m[32m  <th>Address</th>[m
[32m+[m[32m  <th>Contact</th>[m
[32m+[m[32m  </tr>[m
[32m+[m[32m  <tr *ngFor="Let x of test">[m
[32m+[m[32m    <td>{{x.id}}</td>[m
[32m+[m[32m    <td>{{x.name}}</td>[m
[32m+[m[32m    <td>{{x.address}}</td>[m
[32m+[m[32m    <td>{{x.contact}}</td>[m
[32m+[m
[32m+[m[32m  </tr>[m
[32m+[m[41m  [m
[32m+[m[32m  </table>[m
[32m+[m[41m  [m
\ No newline at end of file[m
[1mdiff --git a/src/app/employeedetail/employeedetail.component.spec.ts b/src/app/employeedetail/employeedetail.component.spec.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..f2655fe[m
[1m--- /dev/null[m
[1m+++ b/src/app/employeedetail/employeedetail.component.spec.ts[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport { async, ComponentFixture, TestBed } from '@angular/core/testing';[m
[32m+[m
[32m+[m[32mimport { EmployeedetailComponent } from './employeedetail.component';[m
[32m+[m
[32m+[m[32mdescribe('EmployeedetailComponent', () => {[m
[32m+[m[32m  let component: EmployeedetailComponent;[m
[32m+[m[32m  let fixture: ComponentFixture<EmployeedetailComponent>;[m
[32m+[m
[32m+[m[32m  beforeEach(async(() => {[m
[32m+[m[32m    TestBed.configureTestingModule({[m
[32m+[m[32m      declarations: [ EmployeedetailComponent ][m
[32m+[m[32m    })[m
[32m+[m[32m    .compileComponents();[m
[32m+[m[32m  }));[m
[32m+[m
[32m+[m[32m  beforeEach(() => {[m
[32m+[m[32m    fixture = TestBed.createComponent(EmployeedetailComponent);[m
[32m+[m[32m    component = fixture.componentInstance;[m
[32m+[m[32m    fixture.detectChanges();[m
[32m+[m[32m  });[m
[32m+[m
[32m+[m[32m  it('should create', () => {[m
[32m+[m[32m    expect(component).toBeTruthy();[m
[32m+[m[32m  });[m
[32m+[m[32m});[m
[1mdiff --git a/src/app/employeedetail/employeedetail.component.ts b/src/app/employeedetail/employeedetail.component.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..1d47955[m
[1m--- /dev/null[m
[1m+++ b/src/app/employeedetail/employeedetail.component.ts[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mimport { Component, OnInit } from '@angular/core';[m
[32m+[m[32mimport{EmployeeserviceService} from '../employeeservice.service'[m
[32m+[m[32m@Component({[m
[32m+[m[32m  selector: 'app-employeedetail',[m
[32m+[m[32m  templateUrl: './employeedetail.component.html',[m
[32m+[m[32m  styleUrls: ['./employeedetail.component.css'][m
[32m+[m[32m})[m
[32m+[m[32mexport class EmployeedetailComponent implements OnInit {[m
[32m+[m[32m  test;[m
[32m+[m[32m  constructor(private es:EmployeeserviceService) { }[m
[32m+[m[32m  ngOnInit(){[m
[32m+[m[32m    this.test=this.es.display();[m
[32m+[m[32m  }[m
[32m+[m[41m [m
[32m+[m[32m}[m
[1mdiff --git a/src/app/employeeform/employeeform.component.css b/src/app/employeeform/employeeform.component.css[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/src/app/employeeform/employeeform.component.html b/src/app/employeeform/employeeform.component.html[m
[1mnew file mode 100644[m
[1mindex 0000000..4d7da8f[m
[1m--- /dev/null[m
[1m+++ b/src/app/employeeform/employeeform.component.html[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m<p>[m
[32m+[m[32m  employeeform works![m
[32m+[m[32m</p>[m
[1mdiff --git a/src/app/employeeform/employeeform.component.spec.ts b/src/app/employeeform/employeeform.component.spec.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..1925f78[m
[1m--- /dev/null[m
[1m+++ b/src/app/employeeform/employeeform.component.spec.ts[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport { async, ComponentFixture, TestBed } from '@angular/core/testing';[m
[32m+[m
[32m+[m[32mimport { EmployeeformComponent } from './employeeform.component';[m
[32m+[m
[32m+[m[32mdescribe('EmployeeformComponent', () => {[m
[32m+[m[32m  let component: EmployeeformComponent;[m
[32m+[m[32m  let fixture: ComponentFixture<EmployeeformComponent>;[m
[32m+[m
[32m+[m[32m  beforeEach(async(() => {[m
[32m+[m[32m    TestBed.configureTestingModule({[m
[32m+[m[32m      declarations: [ EmployeeformComponent ][m
[32m+[m[32m    })[m
[32m+[m[32m    .compileComponents();[m
[32m+[m[32m  }