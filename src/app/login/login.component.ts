import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormControl, FormGroupDirective, NgForm } from '@angular/forms';
import { ErrorStateMatcher } from '@angular/material/core';



@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent implements OnInit {

  newmyForm!: FormGroup;

  
  constructor(private fb: FormBuilder) { }

  ngOnInit() { 
  /*imageLogin = 'assets/books/nacn.png';*/
  

      this.newmyForm = this.fb.group({
        email: ['', [
        Validators.required,
        Validators.email
      ]],
      password: ['', [
        Validators.required,
        Validators.pattern('^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$)')
      ]],
    });
  }

  get email() {
    return this.newmyForm.get('email')
  }

  get password() {
    return this.newmyForm.get('password')
  }

}
