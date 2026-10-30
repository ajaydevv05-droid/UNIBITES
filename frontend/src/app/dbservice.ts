
import { HttpClient, HttpEvent, HttpRequest } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../environments/environment';

@Injectable({
  providedIn: 'root',
})
export class Dbservice {

  // Automatically selects local or production backend
  baseUrl: string = environment.apiUrl;

  constructor(private http: HttpClient) { }

  login(data: any) {
    return this.http.post(`${this.baseUrl}/login`, data).toPromise();
  }

  upload(file: File): Observable<HttpEvent<any>> {
    const formData: FormData = new FormData();
    formData.append('file', file);

    const req = new HttpRequest(
      'POST',
      `${this.baseUrl}/upload`,
      formData,
      {
        reportProgress: true,
        responseType: 'json'
      }
    );

    return this.http.request(req);
  }

  insertcategory(data: any) {
    return this.http.post(`${this.baseUrl}/categoryregistration`, data).toPromise();
  }

  categoryview() {
    return this.http.get(`${this.baseUrl}/categoryview`).toPromise();
  }

  deletecategory(data: any) {
    return this.http.post(`${this.baseUrl}/deletecategory`, data).toPromise();
  }

  editcategory(category_id: any) {
    return this.http.post(`${this.baseUrl}/editcategory`, category_id).toPromise();
  }

  updatecategory(data: any) {
    return this.http.post(`${this.baseUrl}/updatecategory`, data).toPromise();
  }

  insertstaff(data: any) {
    return this.http.post(`${this.baseUrl}/staffregistration`, data).toPromise();
  }

  staffview() {
    return this.http.get(`${this.baseUrl}/staffview`).toPromise();
  }

  deletestaff(data: any) {
    return this.http.post(`${this.baseUrl}/deletestaff`, data).toPromise();
  }

  editstaff(staff_id: any) {
    return this.http.post(`${this.baseUrl}/editstaff`, staff_id).toPromise();
  }

  updatestaff(data: any) {
    return this.http.post(`${this.baseUrl}/updatestaff`, data).toPromise();
  }

  insertfood(data: any) {
    return this.http.post(`${this.baseUrl}/foodregistration`, data).toPromise();
  }

  foodview() {
    return this.http.get(`${this.baseUrl}/foodview`).toPromise();
  }

  categoryget() {
    return this.http.get(`${this.baseUrl}/categoryview`).toPromise();
  }

  getcategorybyid(category_id: any) {
    return this.http.post(`${this.baseUrl}/getcategorybyid`, category_id).toPromise();
  }

  insertstudent(data: any) {
    return this.http.post(`${this.baseUrl}/studentregistration`, data).toPromise();
  }

  singleview(category_id: any) {
    return this.http.post(`${this.baseUrl}/singleview`, category_id).toPromise();
  }

  foodsingle(food_id: any) {
    return this.http.post(`${this.baseUrl}/foodsingle`, food_id).toPromise();
  }

  insertcart(data: any) {
    return this.http.post(`${this.baseUrl}/insertcart`, data).toPromise();
  }

  cartview(login_id: any) {
    return this.http.post(`${this.baseUrl}/cartview?login_id=`, login_id).toPromise();
  }

  placeorder(data: any) {
    return this.http.post(`${this.baseUrl}/placeorder`, data).toPromise();
  }

  placepayment(data: any) {
    return this.http.post(`${this.baseUrl}/placepayment`, data).toPromise();
  }

  orderview(login_id: any) {
    return this.http.post(`${this.baseUrl}/orderview?login_id=`, login_id).toPromise();
  }

  staffpayment(data: any) {
    return this.http.post(`${this.baseUrl}/staffpayment`, data).toPromise();
  }

  stafforder(data: any) {
    return this.http.post(`${this.baseUrl}/stafforder`, data).toPromise();
  }

  orderview1(data: any) {
    return this.http.post(`${this.baseUrl}/orderview1`, data).toPromise();
  }

  monthlypayment(data: any) {
    return this.http.post(`${this.baseUrl}/monthlypayment`, data).toPromise();
  }

  updateStock(data: any) {
    return this.http.post(`${this.baseUrl}/updatestock`, data).toPromise();
  }

  getRecentOrders() {
    return this.http.get(`${this.baseUrl}/recentorders`).toPromise();
  }

  viewdetails(data: any) {
    return this.http.post(`${this.baseUrl}/viewdetails`, data).toPromise();
  }

  getcustomer(data: any) {
    return this.http.post(`${this.baseUrl}/getcustomer`, data).toPromise();
  }

  completed(data: any) {
    return this.http.post(`${this.baseUrl}/completed`, data).toPromise();
  }

  getPayments() {
    return this.http.get(`${this.baseUrl}/customerpayment`).toPromise();
  }

  filterPayments(data: any) {
    return this.http.post(`${this.baseUrl}/customerpayment/filter`, data).toPromise();
  }

  submitFeedback(data: any) {
    return this.http.post(`${this.baseUrl}/submitfeedback`, data).toPromise();
  }

  feedbackview() {
    return this.http.get(`${this.baseUrl}/feedbackview`).toPromise();
  }

  singlefeedback(data: any) {
    return this.http.post(`${this.baseUrl}/singlefeedback`, data).toPromise();
  }

  paymentreport(data: any) {
    return this.http.post(`${this.baseUrl}/paymentreport`, data).toPromise();
  }

  salesreport(data: any) {
    return this.http.post(`${this.baseUrl}/salesreport`, data).toPromise();
  }

  insertevent(data: any) {
    return this.http.post(`${this.baseUrl}/insertevent`, data).toPromise();
  }

  eventfoodreg(data: any) {
    return this.http.post(`${this.baseUrl}/eventfoodreg`, data).toPromise();
  }

  geteventfoods(data: any) {
    return this.http.post(`${this.baseUrl}/geteventfoods`, data).toPromise();
  }

  deleteeventfood(eventfood_id: any) {
    return this.http.post(
      `${this.baseUrl}/deleteeventfood`,
      { eventfood_id: eventfood_id }
    ).toPromise();
  }

  eventviewWithFoods() {
    return this.http.get(`${this.baseUrl}/eventwithfood`).toPromise();
  }

  voteFood(eventfood_id: number) {
    return this.http.post(
      `${this.baseUrl}/eventvote`,
      { eventfood_id }
    ).toPromise();
  }

  getOrderChart() {
    return this.http.get(`${this.baseUrl}/deleteeventfood`).toPromise();
  }

  getSalesReport() {
    return this.http.get(`${this.baseUrl}/getSalesReport`).toPromise();
  }

  getdashboard() {
    return this.http.get(`${this.baseUrl}/adminhome`).toPromise();
  }

  verifyOtp(data: any) {
    return this.http.post(`${this.baseUrl}/verify`, data).toPromise();
  }

  sendOtp(data: any) {
    return this.http.post(`${this.baseUrl}/send`, data).toPromise();
  }

  getEventResults() {
    return this.http.get(`${this.baseUrl}/eventresults`).toPromise();
  }

  fooddelete(data: any) {
    return this.http.post(`${this.baseUrl}/fooddelete`, data).toPromise();
  }
}
