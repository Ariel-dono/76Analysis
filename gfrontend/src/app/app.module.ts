import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';

import { GraphicComponent } from './components/graphic/graphic.component';
import { NavComponent } from './components/navcomponent/nav.component';
import { WorkPaneComponent } from './components/workpanecomponent/workpane.component';
import {GeneralInfoComponent} from './components/generalinformation/generalinfo.component';
import {TopWordComponent} from './components/topwordscomponent/topword.component';
import{TopHashTagComponent} from './components/tophashtagscomponent/tophashtag.component';

import {UpdateService} from "./services/updateservice/update.service"

import { HttpModule } from '@angular/http';

const appRoutes: Routes= [
  { path: '/home', component: AppComponent }
];

@NgModule({
  declarations: [
    AppComponent,
    GraphicComponent,
    NavComponent,
    WorkPaneComponent,
    GeneralInfoComponent,
    TopWordComponent,
    TopHashTagComponent
  ],
  imports: [
    BrowserModule,
    RouterModule,
    HttpModule
  ],
  providers:[UpdateService],
  bootstrap: [AppComponent]
})
export class AppModule { }
