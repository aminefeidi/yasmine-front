import { CommonModule } from "@angular/common";
import { ChangeDetectionStrategy, Component, OnInit } from "@angular/core";
import { MenuManagerService } from "./menu-manager.service";
import { MenuItem } from "src/app/layouts/sidebar/menu.model";

@Component({
  selector: "app-menu-manager",
  templateUrl: "./menu-manager.component.html",
  styleUrls: ["./menu-manager.component.scss"],
})
export class MenuManagerComponent implements OnInit {
  isLoading: boolean = false;
  roles: string[] = ['DEV', 'PROJECT_MANAGER', 'ADMIN'];
  menus: MenuItem[] = [];

  constructor(private service: MenuManagerService) {}

  ngOnInit(): void {
    this.loadMenus();
  }

  loadMenus() {
    this.service.getMenuItems().subscribe((data: any) => {
      this.menus = data;
    });
  }

  updateRoleMenuAssociation(role: string, menuId: number, isChecked: boolean) {
    console.log(role, menuId, isChecked);

    const menu = this.menus.find((m) => m.id === menuId);
    if (menu) {
      if (isChecked) {
        if (!menu.roles || menu.roles === "") {
          menu.roles = role;
        } else {
          menu.roles += "," + role;
        }
      } else {
        if (menu.roles && menu.roles !== "") {
          const roles = menu.roles.split(",");
          const index = roles.indexOf(role);
          if (index !== -1) {
            roles.splice(index, 1);
            menu.roles = roles.join(",");
          }
        }
      }
      this.isLoading = true;
      this.service.updateMenuItem(menu).subscribe({
        next: (data) => {
          this.isLoading = false;
        },
        error: (error) => {
          this.isLoading = false;
          console.error(error);
        },
      });
    }
  }
}
