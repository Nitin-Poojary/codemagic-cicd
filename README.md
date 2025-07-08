# Flutter CI/CD Example with Codemagic

This is a minimal Flutter project demonstrating a real-world CI/CD pipeline using [Codemagic](https://codemagic.io/start), as described in the blog:

[Read the full blog here](https://nitin-poojary.hashnode.dev/flutter-cicd-guide-with-codemagic)

## About the App

A basic Flutter app that displays the environment it's running in.

The environment is configured via a `.env` file and accessed in code using the [`envied`](https://pub.dev/packages/envied) package.

## Environment Configuration

- Create a `.env` file in the root of your project.
- Add the following variable:

```env
ENV_NAME=DEV
```

The envied package is used to generate code from `.env` file. After editing the file run:

```dart
dart run build_runner build --delete-conflicting-outputs
```

## Testing
Includes widget and Integration tests to verify behavior across environments.

## CI/CD Workflow Overview

This project uses a multi-branch CI/CD strategy with Codemagic.  
Each branch is associated with a specific workflow to manage testing, QA, and production release.

| Branch     | Workflow            | Trigger Type        | Purpose                               |
|------------|---------------------|---------------------|----------------------------------------|
| `dev`      | `dev`               | PR to `dev`         | Runs unit tests and analysis on PRs    |
| `test`     | `qa-test`           | PR to `test`        | Runs analysis, unit and integration tests                 |
| `test`     | `qa-release`        | After merge to `test`| Builds app for QA with test env credentials   |
| `staging`  | `staging`           | After merge to `staging` | Builds app for internal testing (For demonstration it just build with prod credentials and shares a build)   |
| `main`     | `prod`              | Manual trigger      | Builds and publishes production release (For demonstration it just build with prod credentials and shares a build) |

Built as a demonstration for the blog on CI/CD pipelines in Flutter with Codemagic.
