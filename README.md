#Bharat Connect
Bharat Connect is a video conferencing and meeting application designed for Android devices. This app is a subpart of the major project GameOn and will eventually include features for video meetings specifically tailored for sports coaches and players.

##Features
User Authentication: Secure login using Firebase Authentication and Google Sign-In.
Create and Join Meetings: Users can create new meetings, join existing ones, and share meeting links with others.
Meeting History: View a list of previously joined meetings.
Responsive UI: Fully responsive design with a fine user interface.
Logout: Users can log out from the app securely.

##Tech Stack
Frontend: Dart, Flutter
Backend: Firebase

##Dependencies
cloud_firestore: ^5.1.0
firebase_auth: ^5.1.2
firebase_core: ^3.2.0
firebase_messaging: ^15.0.3
flutter: sdk: flutter
google_sign_in: ^6.2.1
intl: ^0.17.0
jitsi_meet_wrapper: ^0.2.0+1

##Installation
Clone the repository:
git clone https://github.com/AmanKumar2324/bharat_connect.git

Navigate to the project directory:
cd bharat_connect

Install dependencies:
flutter pub get

Run the app:
flutter run

##Usage
Login: Users can log in using their Google accounts.
Create a Meeting: Click on the 'Create Meeting' button to generate a new meeting link.
Join a Meeting: Enter the meeting link or ID to join an existing meeting.
Share Meeting Link: Share the meeting link with your contacts.
Meeting History: View previously joined meetings in the history section.
Logout: Click the 'Logout' button to log out from the app.

##Acknowledgments
Jitsi Meet
Flutter
Firebase
