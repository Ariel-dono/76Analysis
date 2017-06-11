import { Component } from '@angular/core';
import {UpdateService} from "../../services/updateservice/update.service";

@Component({
  selector: 'navcomponent',
  templateUrl: './nav.component.html',
  styleUrls: ['./nav.component.scss']
})
export class NavComponent{
  title = 'NavComponent';
  tagList: string[]=["#2030NOW","#women","#costarica",
  "#puravida","#MakeAmericaGreatAgain","#Trumprussia",
  "#RecycleReuse","#TraficoCR"];

  constructor (private service:UpdateService)
  {
    setTimeout(()=>{
        this.service.set('Resumen');
    },200);
  }
  update(pName)
  {
    this.service.set(pName);
  }

}
