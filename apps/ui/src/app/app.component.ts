import { Component, OnInit } from '@angular/core';
import { RouterModule } from '@angular/router';
import { NxWelcomeComponent } from './nx-welcome.component';
import { CreateTaskDto } from '@lerncode-workspace/lib/shared';

@Component({
  standalone: true,
  imports: [NxWelcomeComponent, RouterModule],
  selector: 'lerncode-workspace-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss',
})
export class AppComponent implements OnInit {
  title = 'ui';
  ngOnInit(): void {
    const dto: CreateTaskDto = new CreateTaskDto();
    dto.title = 'title';
    dto.description = 'description';
    console.log(dto);
  }
}
