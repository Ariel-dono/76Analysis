import { Component, AfterViewInit} from '@angular/core';
import {UpdateService} from "../../services/updateservice/update.service";
import {GeneralInfoComponent} from "../generalinformation/generalinfo.component";
import {GraphicComponent} from "../graphic/graphic.component";

@Component({
  selector: 'workpanecomponent',
  templateUrl: './workpane.component.html',
  styleUrls: ['./workpane.component.scss'],
  viewProviders:[GeneralInfoComponent,GraphicComponent]
})

export class WorkPaneComponent implements  AfterViewInit{
  private title:string;

  ngAfterViewInit()
  {
    setTimeout(()=>{
        this.title=this.service.get();},200);
  }

   constructor (private service:UpdateService)
   {
      this.service.setUpdate((pTitle:string)=>
        {
          this.title=pTitle;
        }
      );
   }
  
}
