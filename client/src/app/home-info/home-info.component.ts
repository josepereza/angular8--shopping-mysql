import { Component, OnInit,Input } from '@angular/core';
import { shopService } from '../shop.services'

@Component({
  selector: 'app-home-info',
  templateUrl: './home-info.component.html',
  styleUrls: ['./home-info.component.css']
})
export class HomeInfoComponent implements OnInit {

  constructor(public shopService: shopService) { }

  public countProducts = []
  public countOrders = []
  @Input() toHomeInfo;

  ngOnInit() {
    this.shopService.getinfo().subscribe(
      (res:any) => {
        if(res.message === 'No results!!!'){return}
        console.log(res.message)
        let countp:string = res.message.countp.toString();
        let counto:string = res.message.counto.toString();
        for(let i=0; i<countp.length;i++){
          this.countProducts[i] = countp[i]
        }
        for(let j=0; j<counto.length;j++){
          this.countOrders[j] = counto[j]
        }
      },err=>console.log(err)
    )
  }

}
