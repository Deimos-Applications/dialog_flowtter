<img src="https://raw.githubusercontent.com/Deimos-Applications/dialog_flowtter/master/.github/dialog_flowtter_icon.png" width="100%" alt="logo" />
<h2 align="center">
  A Flutter implementation of DialogFlow, improved.
</h2>
  <p align="center">
    Build your integrations with DialogFlow easier and faster.
  </p>

<p align="center">
  <a href="https://pub.dartlang.org/packages/dialog_flowtter">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/dialog_flowtter.svg">
  </a>
  <a href="https://github.com/Deimos-Applications/dialog_flowtter">
    <img src="https://img.shields.io/github/stars/Deimos-Applications/dialog_flowtter.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on GitHub">
  </a>
  <a href="https://github.com/tenhobi/effective_dart">
    <img alt="style: effective dart" src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg">
  </a>  
  <a href="https://opensource.org/licenses/MIT">
    <img alt="MIT License" src="https://img.shields.io/badge/License-MIT-blue.svg">
  </a>
  <a href="https://github.com/zepfietje/starware">
    <img alt="MIT License" src="https://img.shields.io/badge/Starware-⭐-black?labelColor=f9b00d">
  </a>
</p>

# About the package

DialogFlowtter is a package that helps you to build integrations with DialogFlow easier and faster.

- Authenticate with Google Auth Json
- Get an authenticated http client so you can talk with your DialogFlow agent
- Get access to all DialogFlow responses and models easily
- Inspect what values a DialogFlow response could have

## Why DialogFlowtter

The problem with the current DialogFlow integration packages that are available in Pub is that they're:

- Completely abandoned
- Not well documented
- Lack functionality
- Lack flexibility

This one is intended to solve those problems and add more features that I've seen the users want. Check the [TO-DO section](#to-do) for more info on that.

# Platform support

This package is fully supported in **Android**, **iOS** and **Web**.
We have plans on testing and adding support for _Windows_, _Linux_ and _MacOS_ as this platforms mature in the Flutter SDK.

# Installation

1. Add the package to your flutter dependencies in you `pubspec.yaml`:

    ```yaml
    dependencies:
        dialog_flowtter: ^0.1.4
    ```

2. Make sure you add your dialog_flow_auth.json to the `pubspec.yaml` assets:

   ```yaml
    flutter:
        uses-material-design: true
        assets:
            - assets/dialog_flow_auth.json
   ```

3. Add your DialogFlow Auth JSON to the `assets` folder and rename it to `dialog_flow_auth.json`
  
> You can change the name and Path of your JSON later in the code. Just make sure to use the same one in the `pubspec.yaml`
  
4. Get the packages from:

    ```shell
    flutter packages get
    ```

# Get your keys

Refer to [Create a service account and download the private key file](https://cloud.google.com/dialogflow/docs/quick/setup#sa-create)

# How to use

## Detect intent

One of the core features of DialogFlow is to detect what a person is trying to say. You can do that by detecting an intent that you have defined in your [DialogFlow console](https://dialogflow.cloud.google.com/)

1. Create an instance of `DialogFlowtter` and set the `sessionId` that will be used to identify the current conversation of the user with DialogFlow.

  > It's _**highly**_ recommended that you use a different `sessionId` for every conversation that the user establishes with the Assistant
  
  ```dart
    final DialogFlowtter dialogFlowtter = DialogFlowtter(
      sessionId: "YOUR_SESSION_ID_HERE",
    );
  ```

  (OPTIONAL) Change the JSON path to the one you're using. This defaults to `assets/dialog_flow_auth.json`.

  ```dart
    DialogFlowtter(
      jsonPath: "YOUR_JSON_PATH_HERE",
    );
  ```

2. Create a `QueryInput` where you can specify what data you want to send to DialogFlow.

  ```dart
    final QueryInput queryInput = QueryInput(
      text: TextInput(
        text: "Hi. How are you?",
        languageCode: "en",
      ),
    );
  ```

3. Send your input to DialogFlow through the `detectIntent` function.

  ```dart
    DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
    );
  ```

> You can check the code for more info on what info you can send and receive

## Get the info from the intent

You can access the info returned by DialogFlow from the `DetectIntentResponse` that the `detectIntent` returns.

### Get the text from the response

```dart
  DetectIntentResponse response = await dialogFlowtter.detectIntent(
    queryInput: QueryInput(text: TextInput(text: "Hi")),
  );
  
  String textResponse = response.text;

  print(textResponse); // Hi, how may I help you?
```

> _response.text_ returns null if there's no text returned by DialogFlow or if the first message returned it's not of type MessageType.text

### Get the message from the response

See [Message](https://github.com/Deimos-Applications/dialog_flowtter/blob/master/lib/src/models/intent/message.dart) for more info on what the model properties can be

```dart
  DetectIntentResponse response = await dialogFlowtter.detectIntent(
    queryInput: QueryInput(text: TextInput(text: "Hi")),
  );
  
  Message messageResponse = response.message;
```

### Get the response type of the message

```dart
  MessageType messageType = response.message.type;

  print(messageType); /// MessageType.card
```

> _response.message_ returns null if there's no messages returned by DialogFlow

### Be sure to dispose the instance when you're done using it

  ```dart
    dialogFlowtter.dispose();
  ```

## Change the project id

You can change the Project ID that `DialogFlowtter` will use to find your intents in DialogFlow.

1. Create an instance of `DialogFlowtter`

  ```dart
    final DialogFlowtter dialogFlowtter = DialogFlowtter();
  ```

2. Change the `projectId` prop of the instance;

  ```dart
    dialogFlowtter.projectId = "deimos-apps-0905";
  ```

- Pro tip. You can do the exact same thing as above with the special Dart's [cascade notation](https://dart.dev/guides/language/language-tour#cascade-notation-).

  ```dart
    final DialogFlowtter dialogFlowtter = DialogFlowtter()..projectId = "deimos-apps-0905";
  ```

## Make authenticated http requests to your DialogFlow project

You can access the authenticated http client generated by the package by calling the `client` attribute in your instance.

Keep in mind that this can become `null` if you have disposed your instance before.

## Create your own authenticated http client

You can get an authenticated, auto refreshing http client with your custom json data if you call the static `DialogFlowtter.getClient(yourJson)` function.

Keep in mind that this only authenticates with json provided by Google.

Check [googleapis_auth](https://pub.dev/packages/googleapis_auth) for more info.

# Further considerations

Every time you instanciate `DialogFlowtter`, the class creates an authenticated http client, with the credentials obtained from the DialogFlow Auth JSON. Be sure to save this instance and reuse it to avoid memory leaks

## Memory leaks

Make sure to `dispose` your `DialogFlowtter` instance whenever you're done using it. This makes sure to close the authenticated http client and all its `StreamSubscription`s to avoid memory leaks.

## Too many models

We have coded almost every model that you may need to use when implementing this package so you don't have to work with annoying `Map<String, dynamic>` objects. Feel free to ask for any model that is missing to be added to the package.

> The models that were not coded are included as annoying `Map<String, dynamic>` and are tagged with the `//? Create model if necessary`.

# TO-DO

- [x] Add support for cards, images, etc.
- [ ] Secure DialogFlow auth JSON
- [ ] Support audio queries
- [ ] Add a catalog of supported languages
- [ ] Add direct access to common used attributes
- [ ] Support use of custom HTTP Client

## Starware

`DialogFlowtter` is Starware.  
This means you're free to use the project, as long as you star its GitHub repository.  
Your appreciation makes us grow and glow up. ⭐

# Contribute

**Your help is always appreciated.**

You can contribute by checking our [contributing guide](CONTRIBUTING.md) or opening an [issue](https://github.com/Deimos-Applications/dialog_flowtter/issues).
