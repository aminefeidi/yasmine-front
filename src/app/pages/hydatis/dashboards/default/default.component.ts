import { Component, OnInit } from "@angular/core";
import { emailSentBarChart as defaultBarChart } from "./data";
import { ChartType } from "./dashboard.model";
import { DashboardsService } from "../dashboards.service";

@Component({
  selector: "app-default",
  templateUrl: "./default.component.html",
  styleUrls: ["./default.component.scss"],
})
export class DefaultComponent implements OnInit {
  estimationByStoryChart: ChartType;
  estimationByProjectChart: ChartType;
  estimationBySessionChart: ChartType;

  constructor(private service: DashboardsService) {}

  ngOnInit() {
    this.fetchData();
  }

  private fetchData() {
    this.service.getEstimationStatsByUserStory().subscribe((data) => {
      this.estimationByStoryChart = this.deepCopy(defaultBarChart);
      if (data) {
        this.estimationByStoryChart.xaxis = {
          categories: this.getStoryNames(Object.keys(data)),
        };
        this.estimationByStoryChart.series = [
          {
            name: "Estimation",
            data: Object.values(data),
          },
        ];
      }
    });

    this.service.getEstimationStatsByProject().subscribe((data) => {
      this.estimationByProjectChart = this.deepCopy(defaultBarChart);
      if (data) {
        this.estimationByProjectChart.xaxis = {
          categories: this.getProjectNames(Object.keys(data)),
        };
        this.estimationByProjectChart.series = [
          {
            name: "Estimation",
            data: Object.values(data),
          },
        ];
      }
    });

    this.service.getEstimationStatsBySession().subscribe((data) => {
      this.estimationBySessionChart = this.deepCopy(defaultBarChart);
      if (data) {
        this.estimationBySessionChart.xaxis = {
          categories: this.getSessionNames(Object.keys(data)),
        };
        this.estimationBySessionChart.series = [
          {
            name: "Estimation",
            data: Object.values(data),
          },
        ];
      }
    });
  }

  private deepCopy(obj: any) {
    return JSON.parse(JSON.stringify(obj));
  }

  getProjectNames(ids: string[]) : string[] {
    return ids.map((id) => `prject ${id}`);
  }

  getStoryNames(ids: string[]) : string[] {
    return ids.map((id) => `story ${id}`);
  }

  getSessionNames(ids: string[]) : string[] {
    return ids.map((id) => `session ${id}`);
  }
}
