
import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { FormBuilder, ReactiveFormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { Dbservice } from '../../dbservice';
import { CommonModule } from '@angular/common';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-guesthome',
  standalone: true,
  imports: [ReactiveFormsModule, RouterModule, CommonModule],
  templateUrl: './guesthome.html',
  styleUrl: './guesthome.scss',
})
export class Guesthome implements OnInit {
  public categoryarray: any[] = [];
  eventArray: any[] = [];

  selectedFood: { [key: number]: number | null } = {};

  today: string = new Date().toISOString().split('T')[0];

  // Login / Register popup visibility
  isAuthPopupOpen = false;

  constructor(
    private fb: FormBuilder,
    private db: Dbservice,
    private cdr: ChangeDetectorRef,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.viewdata();
    this.loadEvents();
  }

  // CATEGORY VIEW
  viewdata(): void {
    this.db.categoryview().then((data: any) => {
      this.categoryarray = data;
      this.cdr.detectChanges();
    }).catch((error: any) => {
      console.error('Error loading categories:', error);
    });
  }

  // LOAD EVENTS AND REMOVE EXPIRED EVENTS
  loadEvents(): void {
    this.db.eventviewWithFoods().then((data: any) => {
      const today = new Date();
      today.setHours(0, 0, 0, 0);

      this.eventArray = data.filter((event: any) => {
        const eventDate = new Date(event.event_date);
        eventDate.setHours(0, 0, 0, 0);
        return eventDate >= today;
      });

      this.cdr.detectChanges();
    }).catch((error: any) => {
      console.error('Error loading events:', error);
    });
  }

  // SELECT FOOD OPTION
  selectFood(event_id: number, eventfood_id: number): void {
    this.selectedFood[event_id] = eventfood_id;
  }

  // GUEST VOTE BLOCK
  vote(event_id: number): void {
    Swal.fire({
      title: 'Join UNIBITES 🎉',
      text: 'Please login or register to participate in this poll.',
      icon: 'info',
      showCancelButton: true,
      confirmButtonText: 'Login',
      cancelButtonText: 'Register',
      confirmButtonColor: '#f4511e',
      cancelButtonColor: '#17243a',
      reverseButtons: true,
      background: '#ffffff',
      color: '#17243a',
      customClass: {
        popup: 'unibites-swal-popup',
        title: 'unibites-swal-title',
        confirmButton: 'unibites-swal-confirm',
        cancelButton: 'unibites-swal-cancel'
      }
    }).then((result) => {
      if (result.isConfirmed) {
        this.router.navigate(['/login']);
      } else if (result.dismiss === Swal.DismissReason.cancel) {
        this.router.navigate(['/studentregistration']);
      }
    });
  }

  // CHECK IF POLL IS CLOSED
  isPollClosed(eventDate: string): boolean {
    return eventDate < this.today;
  }

  // FIND WINNING FOOD
  getWinningFood(foods: any[]): string {
    if (!foods || foods.length === 0) {
      return 'No votes';
    }

    let winner = foods[0];

    foods.forEach((food: any) => {
      if (food.count > winner.count) {
        winner = food;
      }
    });

    return winner.food_name;
  }

  // VOTE PERCENTAGE
  getVotePercentage(food: any, foods: any[]): number {
    const totalVotes = foods.reduce(
      (sum: number, item: any) => sum + Number(item.count || 0),
      0
    );

    if (totalVotes === 0) {
      return 0;
    }

    return Math.round((Number(food.count || 0) / totalVotes) * 100);
  }

  // EXPLORE MENU
  exploreMenu(): void {
    const role = localStorage.getItem('role');
    const loginId = localStorage.getItem('loginid');

    if (role && loginId) {
      this.router.navigate(['/guestmaster/menu1']);
    } else {
      this.isAuthPopupOpen = true;
    }
  }

  // CLOSE LOGIN / REGISTER POPUP
  closeAuthPopup(): void {
    this.isAuthPopupOpen = false;
  }

  // GO TO LOGIN
  goToLogin(): void {
    this.isAuthPopupOpen = false;
    this.router.navigate(['/login']);
  }

  // GO TO REGISTRATION
  goToRegister(): void {
    this.isAuthPopupOpen = false;
    this.router.navigate(['/studentregistration']);
  }
}
