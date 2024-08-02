# News Headlines iOS App

## Overview

This iOS app fetches the latest news headlines using the [Hacker News Algolia API](https://hn.algolia.com/api). It presents the headlines in a user-friendly interface and allows users to view the full articles within the app using a WebView.

## Features

- **Headline List View**: Displays a list of the latest news headlines.
- **Detail View**: Redirects to a WebView within the app to display the full article when a headline is tapped.

## Technologies Used

- **SwiftUI**: Utilized for building the user interface.
- **Combine**: Used for handling asynchronous data streams and API responses.
- **Hacker News Algolia API**: Provides the latest news data.
- **WebKit**: Integrated for the WebView to display full articles within the app.

## What We Learned

- **API and Networking**: Learned how to fetch data from a RESTful API, handle network responses, and parse JSON data.
- **SwiftUI**: Gained experience in building dynamic and responsive UI components using SwiftUI.
- **WebView Integration**: Learned to embed WebView within a SwiftUI app to display external web content.

## How to Use

1. Clone the repository.
2. Open the project in Xcode.
3. Run the app on a simulator or a physical device.
4. Browse the latest news headlines and tap on any headline to read the full article.

## Screenshots

![List View Screenshot](https://github.com/user-attachments/assets/48e7d97f-f8ab-4ffd-9678-d8a5eb007852)
*List of news headlines.*


![WebView Screenshot](https://github.com/user-attachments/assets/298cb8b2-84ab-424c-916b-fd9675edfe4f)
*WebView displaying a full article.*

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to [Hacker News Algolia API](https://hn.algolia.com/api) for providing the news data.
