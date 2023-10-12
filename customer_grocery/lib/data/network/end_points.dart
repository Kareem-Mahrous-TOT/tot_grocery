const baseUrl = 'http://20.163.148.155:9070/';

/// api variables
const String accessToken = "accessToken";
const String apiKey = "0adf27ba-0741-406a-a29c-c65a0bdc1827";
const String token =
    "eyJhbGciOiJSUzI1NiIsImtpZCI6Ijg0QzUyRkQ5MUFFM0Y3MTNCNDlCMkI5NjlDMDQyREFEODVBNzc2M0IiLCJ4NXQiOiJoTVV2MlJyajl4TzBteXVXbkFRdHJZV25kanMiLCJ0eXAiOiJhdCtqd3QifQ.eyJuYW1lIjoiMWViMmZhOGFjNjU3NDU0MWFmZGI1MjU4MzNkYWRiNDYiLCJzdWIiOiJhZG1pbiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkbWluQHRvdC1kZW1vc3RvcmUuY29tIiwicm9sZSI6Il9fYWRtaW5pc3RyYXRvciIsIm1lbWJlcklkIjoiIiwib2lfYXVfaWQiOiI0YzQyMDU3ZS1jOWRkLTQ4NjctOGMyNy02MTkyNTBhYTc4Y2EiLCJvaV90a25faWQiOiJhYTI4ZWZlZi02NTQxLTQ1NDItYjA0Ni1kMmY5MTI5ODA1ZjUiLCJhdWQiOiJyZXNvdXJjZV9zZXJ2ZXIiLCJzY29wZSI6Im9mZmxpbmVfYWNjZXNzIiwianRpIjoiMzEwZmRjYmItOGFiMS00NWRiLThmY2YtZjYwNTM5YTQ2YzRkIiwiZXhwIjoxNjk3MDM5OTExLCJpc3MiOiJodHRwOi8vMjAuMTYzLjE0OC4xNTU6OTA3MC8iLCJpYXQiOjE2OTY5NDI3MTF9.KDqMTU3RwN6LKcJRHqOmV8aY9AtCbwkvoJeFvHi4OEZHWOxNW9CZl9DSV127Z6yfMtDc4k-mQKhlVgGWTNcCbH__HBi3GvtE0JC8q8fSQKtAbzLPP8h0cJOHYSKi-Ff1u2NWkbLJU7Gukug1K0rPSgwEeIuGh59aihgk_iYEG47KlDcYtFe9cudlboJ-bfbBF4u7k7OcNZMdaNe-OkGsZPV9EMKSEUlHpajJomEXVvrXFBqywUw4GFO-Nd-GBHx_-_wgJmI2cYsotQxYGf9OQZUM8x9fZWRJysRfu7qPqWgvH-KJd_HR43aU8B8Tcc7RRh1QY0R5oIuY0EH4GhlMHb3WF-w7ylRZ1dXo1Yq0z3vSjG2qxqWKEbeY7jhn1ZqebREQqCADEBPIQcYRwx-qgQS1HvZTszXF7lfHBugWh-riS99sWCJFRVnfkAM1Mz_Z7W5UxW2-IWIuaUm6zAzmumWxPuOKbS5yfNTl59oPrluUEDlL0aG_mvYM27Lm5J4WBBecvxHrhnaRfSLc2WbdjIj4-MhLz25drWvG-cTeL0aSZ4rYKRr1sh9A6WGuNp5cJ4QKA6Rr8UrW4yWff0n3-OcswDaV3u0dldcrIbEKClwIrX-ivC4C9GsXgytS0_W9zFH-kRdeUAPHJOnNFwtl2b9uksPjoV8Wpb2TRiMtjfU";

// End Points for Auth
const loginEndPoint = 'api/platform/security/login';
const logoutEndPoint = 'api/platform/security/logout';
const createUserEndPoint = 'api/platform/security/users/create';
const tokenEndPoint = 'connect/token';
const signoutEndPoint = '/api/platform/security/logout';

// End Points for Products
const totProductsEndPoint = "/api/catalog/search/products";

// End points for Orders
const totCreateOrderEndPoint = "/api/order/customerOrders";
const totSearchOrderEndPoint = "/api/order/customerOrders/search";

//End Points for customers
const totCustomersEndPoint = "/api/members/search";
const totAddCustomerEndPoint = "/api/members";

//End Points for Categories
const totCategoriesEndPoint = "/api/catalog/search/categories";
const totlistEntriesEndPoint = "/api/catalog/listentries";

//End Point for Carts
const totSearchCartEndpoint = "/api/carts/search";
const totSearchCartByIdEndpoint = "/api/carts/$cartId";
const totaddItemtoCartByIdEndpoint = "/api/carts/$cartId/items";

const bakeryId8080 = "f5790b39-4fc8-4aad-8318-259d28595f05";
const alkhbazId = "0a841b7e-c732-4738-913d-9e43c054170e";
const storeId = "alkhbaz";
const cartId = "7da00a92-bd90-4d43-b415-09d6ed4e6d9d";
