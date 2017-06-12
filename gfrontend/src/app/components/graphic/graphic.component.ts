import { Component } from '@angular/core';

import * as d3 from 'd3-selection';
import * as d3Scale from "d3-scale";
import * as d3Shape from "d3-shape";
import * as d3Array from "d3-array";
import * as d3Axis from "d3-axis";

export interface valueSet
{
  date: Date,
  value: number 
}

export interface List
{
  id: string,
  values: valueSet []
}

@Component({
  selector: 'graphiccomponent',
  templateUrl: './graphic.component.html',
  styleUrls: ['./graphic.component.scss']
})
export class GraphicComponent {

  subtitle: string = 'Análisis atemporal';

  data: any;

  svg: any;
  margin = {top: 20, right: 80, bottom: 30, left: 50};
  g: any;
  width: number;
  height: number;
  x;
  y;
  z;
  line;

  ListSet: List[]

  constructor() {
    
  }


  ngOnInit() {
    this.initValues();
    this.data = this.ListSet.map((v) => v.values.map((v) => v.date ))[0];
                            //.reduce((a, b) => a.concat(b), []);
    this.initChart();
    this.drawAxis();
    this.drawPath();
  }

  private initValues()
  {
    this.ListSet=
    [
      {
        "id": "CantidadUsuarios",
        "values": [
          {"date": new Date("2011-10-01"), "value": 63.4},
          {"date": new Date("2011-10-02"), "value": 58.0},
          {"date": new Date("2011-10-03"), "value": 53.3},
          {"date": new Date("2011-10-04"), "value": 55.7},
          {"date": new Date("2011-10-05"), "value": 64.2},
          {"date": new Date("2011-10-06"), "value": 58.8},
          {"date": new Date("2011-10-07"), "value": 57.9},
          {"date": new Date("2011-10-08"), "value": 61.8},
          {"date": new Date("2011-10-09"), "value": 69.3}
          ]
      },
      {
        "id": "CantidadTweets",
        "values": [
          {"date": new Date("2011-10-01"), "value": 40.4},
          {"date": new Date("2011-10-02"), "value": 38.0},
          {"date": new Date("2011-10-03"), "value": 33.3},
          {"date": new Date("2011-10-04"), "value": 55.7},
          {"date": new Date("2011-10-05"), "value": 64.2},
          {"date": new Date("2011-10-06"), "value": 48.8},
          {"date": new Date("2011-10-07"), "value": 53.9},
          {"date": new Date("2011-10-08"), "value": 69.8},
          {"date": new Date("2011-10-09"), "value": 59.3}
          ]
      },
      {
        "id": "OtrosHashTags",
        "values": [
          {"date": new Date("2011-10-01"), "value": 33.4},
          {"date": new Date("2011-10-02"), "value": 38.0},
          {"date": new Date("2011-10-03"), "value": 73.3},
          {"date": new Date("2011-10-04"), "value": 85.7},
          {"date": new Date("2011-10-05"), "value": 94.2},
          {"date": new Date("2011-10-06"), "value": 28.8},
          {"date": new Date("2011-10-07"), "value": 37.9},
          {"date": new Date("2011-10-08"), "value": 41.8},
          {"date": new Date("2011-10-09"), "value": 80.3}
          ]
      }
    ]
  }
  private initChart(): void {
    this.svg = d3.select("svg");

    this.width = this.svg.attr("width") - this.margin.left - this.margin.right;
    this.height = this.svg.attr("height") - this.margin.top - this.margin.bottom;

    this.g = this.svg.append("g").attr("transform", "translate(" + this.margin.left + "," + this.margin.top + ")");

    this.x = d3Scale.scaleTime().range([0, this.width]);
    this.y = d3Scale.scaleLinear().range([this.height, 0]);
    this.z = d3Scale.scaleOrdinal(d3Scale.schemeCategory10);

    this.line = d3Shape.line()
                       .curve(d3Shape.curveBasis)
                       .x( (d: any) => this.x(d.date) )
                       .y( (d: any) => this.y(d.value) );

    this.x.domain(d3Array.extent(this.data, (d: Date) => d ));

    this.y.domain([
      d3Array.min(this.ListSet, function(c) { return d3Array.min(c.values, function(d) { return d.value; }); }),
      d3Array.max(this.ListSet, function(c) { return d3Array.max(c.values, function(d) { return d.value; }); })
    ]);

    this.z.domain(this.ListSet.map(function(c) { return c.id; }));
  }

  private drawAxis(): void {
    this.g.append("g")
      .attr("class", "axis axis--x")
      .attr("transform", "translate(0," + this.height + ")")
      .call(d3Axis.axisBottom(this.x));

    this.g.append("g")
      .attr("class", "axis axis--y")
      .call(d3Axis.axisLeft(this.y))
      .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", "0.71em")
      .attr("fill", "#000")
      .text("Cantidad, ºF");
  }

  private drawPath(): void {
    let city = this.g.selectAll(".city")
      .data(this.ListSet)
      .enter().append("g")
      .attr("class", "city");

    city.append("path")
      .attr("class", "line")
      .attr("d", (d) => this.line(d.values) )
      .style("stroke", (d) => this.z(d.id) );

    city.append("text")
      .datum(function(d) { return {id: d.id, value: d.values[d.values.length - 1]}; })
      .attr("transform", (d) => "translate(" + this.x(d.value.date) + "," + this.y(d.value.value) + ")" )
      .attr("x", 3)
      .attr("dy", "0.35em")
      .style("font", "10px sans-serif")
      .text(function(d) { return d.id; });
  }

}

