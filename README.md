# iOS Print SDK

![Kite](Kite SDK/docs/kite.png)

The Kite Print SDK makes it easy to add print on demand functionality to your app.

Harness our worldwide print and distribution network. We'll take care of all the tricky printing and postage stuff for you!

To get started, you will need to have a free Kite developer account. Go to [kite.ly](https://www.kite.ly) to sign up for free.

## Products

Use print to unlock hidden revenue streams and add value for your users. *In under ten minutes* you could be using our SDK to print:

- Magnets
- Polaroid Style Prints
- Square Prints
- Postcards
- Frames
- A4 (invoices, letters, etc)
- Large Format Posters (A3, A2, A1)
- Square and Round Stickers
- New products being added monthly

## Features
- Print a wide variety of [products](#products) on demand
- Dynamic & realtime control over the pricing of products in your app pricing using our web [Developer Dashboard](https://www.kite.ly)
- Revenue & order volume analytics available in the web dashboard
- Review, refund or reprint any order within the web dashboard
- Localized currency support
- Worldwide address search & lookup
- No server infrastructure required. We can handle everything for you from processing payments to printing & postage
- Your branding not ours. You can create your own custom checkout & payment UI or customize ours

## Requirements

* Xcode 5 and iOS SDK 7
* iOS 7.0+ target deployment

## Installation
### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like the Kite Print SDK in your projects. If you're using it just add the following to your Podfile:

```ruby
pod "Kite-Print-SDK", "~> 2.0"
```

If you'd like to offer your users the opportunity to pay via PayPal in the checkout process also add the following to your Podfile:

```ruby
pod "Kite-Print-SDK/PayPal", "~> 2.0"
```

## Use Cases

The Print SDK supports two primary use cases: **Kite Print Shop Experience**, and **Custom User Experience**.

### Kite Print Shop User Experience

![Kite](Kite SDK/docs/print-shop1.jpg)

The Kite Print SDK includes a robust product selection, photo editing and payment experience that's proven to convert well with users. It can take care of everything for you, no need to spend time building any user interfaces.

This is the quickest approach to integration and perfect if you don't want to spend a great deal of time building a custom experience. You can be up & running within minutes!

To use our Print Shop experience:

1. [Create and present (or push) an `OLKiteViewController`](Kite SDK/docs/print_shop.md) passing it an array of photos, we'll do the rest.
2. [Register your payment details](https://www.kite.ly/accounts/billing/) with us so that we can pay you when your users place orders


### Custom User Experience
You can build your own UI if you don't want to use or customize the provided Print Shop experience. You can still use the Print SDK to handle the print order creation and submission:

1. [Create a print order](Kite SDK/docs/create_print_order.md) representing the product(s) you wish to have printed and posted
2. [Set the shipping address](Kite SDK/docs/shipping.md) to which the order will be delivered
3. [Take payment from the user](Kite SDK/docs/payment.md) for the order and submit it to our servers for printing and posting
4. [Register your payment details](https://www.kite.ly/accounts/billing/) with us so that we can pay you when your users place orders

## Credentials & Environments
Your mobile app integration requires different API Keys values for each environment: Live and Test (Sandbox).

You can find these Kite API credentials under the [Credentials](https://www.kite.ly/accounts/credentials/) section of the development dashboard.

### Sandbox

Your Sandbox API Key can be used to submit test print orders to our servers. These orders will not be printed and posted but will allow you to integrate the Print SDK into your app without incurring cost. During development and testing you'll primarily want to be using the sandbox environment to avoid moving real money around. To test the sandbox payment you can use your own PayPal sandbox account or contact us at hello@kite.ly

When you're ready to test the end to end printing and postage process; and before you submit your app to the App Store, you'll need to swap in your live API key.

### Live

Your Live API Key is used to submit print orders to our servers that will be printed and posted to the recipient specified. Live orders cost real money. This cost typically passed on to your end user (although this doesn't have to be the case if you want to cover it yourself).

Logging in to our [Developer Dashboard](https://www.kite.ly) allow's you to dynamically change the end user price i.e. the revenue you want to make on every order. Payment in several currencies is supported so that you can easily localize prices for your users. The dashboard also provides an overview of print order volume and the money you're making.

## Documentation

* These docs in the SDK, which include an overview of usage, step-by-step integration instructions, and sample code
* The sample app included in this SDK
* Header files are thoroughly documented; refer to them as needed for extra details about any given property or parameter
* The [Kite Print API & SDK Developer Docs](https://www.kite.ly/docs/1.1/), which cover error codes and optional server-side integration instructions

## Print API
We also have a [REST print API](https://www.kite.ly/docs/1.1/) for those who prefer to invent wheels :)

## License

Kite iOS Print SDK is available under the MIT license. See the [LICENSE](Kite SDK/LICENSE) file for more info.
