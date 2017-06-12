import{Injectable} from "@angular/core"


@Injectable()
export class UpdateService
{
   private hashTag: string;
   private updateOp: (pTitle: string) => void;
   get()
   {
        return this.hashTag;
   }
   set( pHashTag:string)
   {
        this.hashTag=pHashTag;
        this.updateOp(this.hashTag);
   }
   setUpdate(Op:any)
   {
        this.updateOp=Op;
   }
}