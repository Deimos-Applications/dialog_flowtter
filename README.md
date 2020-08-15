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

# TO-DO

- [ ] Secure DialogFlow auth JSON
- [ ] Support audio queries
- [ ] Add a catalog of supported languages
- [ ] Add direct access to common used props
- [ ] Support use of custom HTTP Client
