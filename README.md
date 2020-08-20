<img src="./.github/dialog_flowtter_icon.png" width="100%" alt="logo" />
<h2 align="center">
  A Flutter implementation of DialogFlow, improved
</h2>

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
</p>

# Installation

1. Add the package to your flutter dependencies in you `pubspec.yaml`:

    ```yaml
    dependencies:
        dialog_flowtter: ^0.1.0
    ```

2. Make sure you add your dialog_flow_auth.json to the `pubspec.yaml` assets:

   ```yaml
    flutter:
        uses-material-design: true
        assets:
            - assets/dialog_flow_auth.json
   ```

3. Add your DialogFlow Auth JSON to the `assets` folder and rename it to `dialog_flow_auth.json`
  
- _You can change the name and Path of your JSON later in the code. Just make sure to use the same one in the `pubspec.yaml`_
  
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

- Pro tip. You can do the exact same thing as above with the special Dart's cascading notation.

  ```dart
    final DialogFlowtter dialogFlowtter = DialogFlowtter()..projectId = "deimos-apps-0905";
  ```

# Further considerations

The `DialogFlowtter` class creates an authenticated http client with the credentials, obtained from the DialogFlow Auth JSON, whenever you instanciate the class and saves it for later use. It is _**important**_ that you save this instance and don't create a new one to avoid prompting the authentication process multiple times.

## Too many models

We have coded almost every model that you may need to use when implementing this package so you don't have to work with annoying `Map<String, dynamic>` objects. Feel free to ask for any model that is missing to be added to the package. 

> The models that were not coded are included as annoying `Map<String, dynamic>` and are tagged with the `//? Create model if necessary`.

# TO-DO

- [ ] Add support for cards, images, etc.
- [ ] Secure DialogFlow auth JSON
- [ ] Support audio queries
- [ ] Add a catalog of supported languages
- [ ] Add direct access to common used props
- [ ] Support use of custom HTTP Client
