# EasyTravel — ASP.NET Web Forms (with .NET validation)

The whole EasyTravel website is now ASP.NET Web Forms (.aspx + C# code-behind).
The 7 form pages use the classic .NET validation controls; the other 20 former
.html pages are plain .aspx pages that share the same css/js/images.

## How to run
1. Open `WebApplication1.csproj` (or the solution) in Visual Studio.
2. Build > Build Solution (the EasyTravel pages compile with the project).
3. In Solution Explorer, right-click `index.aspx` > **Set As Start Page**, then Ctrl+F5.

Project targets .NET Framework 4.7.2 (the template default).
Note: the template's FriendlyUrls may show `/Login` instead of `/Login.aspx` in the address bar — that is normal and everything still works. The template's own Default/About/Contact pages are untouched.

## Pages and validators
| Page          | Validators used |
|---------------|-----------------|
| Signup.aspx   | RequiredFieldValidator, RegularExpressionValidator (name/email/password), CompareValidator (confirm password), CustomValidator (terms checkbox, client + server), ValidationSummary |
| Login.aspx    | RequiredFieldValidator, RegularExpressionValidator (email, min length), ValidationSummary |
| Forgot.aspx   | RequiredFieldValidator, RegularExpressionValidator (email OR 10-digit mobile), ValidationSummary |
| NewPass.aspx  | RequiredFieldValidator, RegularExpressionValidator (strength), CompareValidator, ValidationSummary |
| Traveler.aspx | RequiredFieldValidator, RegularExpressionValidator (names/phone/passport), CompareValidator Type=Date (DOB), RangeValidator 1-9 (passengers), ValidationSummary |
| Payment.aspx  | RequiredFieldValidator, RegularExpressionValidator (card no / expiry MM/YY / CVV), RadioButtonList, ValidationSummary |
| Profile.aspx  | RequiredFieldValidator, RegularExpressionValidator, CompareValidator Type=Date (DOB, passport expiry), ValidationSummary |

Every submit handler also checks `Page.IsValid` server-side before redirecting,
with `// TODO` comments marking where the real database/backend code goes.

## Structure
```
MasterPages/   Site.Master (public layout)  Admin.Master (admin layout)
Controls/      Navbar, Footer, IconSprite, AdminSidebar  (reusable user controls, .ascx)
Pages/         index, flights, hotels, hotel, destination
Booking/       seat, Traveler, Payment, confirmed, cancel, cancelled, edit, trips, saved
Account/       Login, Signup, Forgot, NewPass, Profile, dash
Admin/         adm_dash, adm_customers, adm_flights, adm_hotels, adm_revenue, adm_reports, adm_settings
css/ js/ images/ Database/   shared assets and SQL script
```
- Every page only holds its own content; navbar/footer/sidebar come from `Controls/` through the master pages.
- Links use `~/Folder/page.aspx` (resolved by ASP.NET), so they work from any folder.
- `web.config` — classic validation mode, en-GB culture (dd/mm/yyyy dates), static client IDs.

## Database (SQL Server)
1. Open Visual Studio > View > SQL Server Object Explorer > (localdb)\MSSQLLocalDB > right-click > New Query.
2. Paste and run `Database/EasyTravel.sql` — it creates the `EasyTravelDb` database, 10 tables, and sample data.
3. Connection string is already in `web.config` (name: `EasyTravelDb`, LocalDB by default).

Tables: Users, Destinations, Hotels, Rooms, Flights, Bookings, Passengers, Payments, Cancellations, SavedDestinations.

Already wired with ADO.NET (`App_Code/Db.cs` + SqlCommand with parameters):
- **Signup.aspx** inserts a real row into Users (SHA-256 hashed password, duplicate-email check).
- **Login.aspx** verifies against Users. Demo account: `demo@easytravel.in` / `Demo@123`.
The other pages have `// TODO` comments naming the exact table/SQL to use.

## Notes
- Validation runs client-side (instant red messages) AND server-side (Page.IsValid).
- After a successful Login/Signup, the page redirects to `dash.aspx?user=Name`;
  `js/main.js` picks that up and switches the navbar to the logged-in account menu.
- Dates use dd/mm/yyyy (en-GB culture set in web.config).
