<p align="center">
  <img src="belugas-python.png" height="300px" alt="Belugas Python" />
</p>

![Made with Love by Icalia Labs](https://img.shields.io/badge/With%20love%20by-Icalia%20Labs-ff3434.svg)

## Overview

`belugas-python` is an engine for detecting application [features](#what-is-a-feature) for Python projects based on static analysis, in other words `belugas-python` engine can detect the language & framework your Python application is using.

This engine works as command line interface on your local machine of a Docker container:

<p align="center">
  <img src="http://i.imgur.com/CZO8KEu.gif">
</p>

## Table of contents

- [Why?](#why)
- [What is a feature?](#what-is-a-feature)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Credits](#credits)

## Why?

`belugas-python` is part of the [Whales](https://github.com/gueils/whales) ecosystem: A set of tools to automatically dockerize your applications.

## What is a feature?

A feature is an application attribute detected during the static analysis. This analysis is the act of derivating data from code such as programming language, frameworks, service dependencies and so on. See [here](#supported-features) for a list of attributes this engines currently supports.

A feature has the following format:

```
{
  "type":"feature",
  "name":"Python",
  "version":"2.7",
  "description":"The application uses Python code",
  "content":"",
  "categories":["Language"],
  "cue_locations":[""],
  "engines":["belugas","belugas-python"]
}
```

Where:

- **type**: Will always be a _feature_.
- **name**: This is the name of the language, framework or database that is being used in the application. 
- **version**: The detected version of the feature. This one is optional
- **description**: A string explaining the feature that was detected.
- **content**: A markdown snippet describing the feature, including deeper explanations and links to other resources. This one is optional
- **categories**: Features are associated with one or more categories, for now we're only handling two categories: Language & Framework. 
- **cue_locations**: An array of Location objects representing the places in the source code that provide evidence of the detected feature. This one is optional
- **engines**: An array of engine names that detected the feature, or refined the data detected by the previous engines.

### Supported Features

We currently only have support for a small set of libraries, you can easily find them [here](https://github.com/gueils/belugas-python/blob/master/lib/belugas/python/standard_names/base.rb) and you can easily add them by placing a pull request.

## Installation

### Prerequisites

The Belugas Python CLI is distributed and run as a [Docker](https://hub.docker.com/r/gueils/belugas-python/) image, so you only need to have Docker [installed](https://docs.docker.com/engine/installation/) and running on your machine.

### Setup

Fire up your terminal and run: 

```console
docker pull gueils/belugas-python:development
```

And that's it! 

## Usage

Here's where the magic begins, first of all in your terminal go to the project directory you want to analyze:

```console
cd code/path_to_project/
```

And then just execute the following command:

```console
docker run \
  --interactive --tty --rm \
  --volume "$PWD":/code \
  gueils/belugas-python:development
```

And voilá! The terminal will stream a json output for each of the features detected in the following format: 

```
{
  "type":"feature",
  "name":"django",
  "version":"",
  "description":"The application uses django",
  "categories":["Framework"],
  "cue_locations":[""]
}
{
  "type":"feature",
  "name":"Python",
  "version":"2.7",
  "description":"The application uses Python code",
  "categories":["Language"]
}
```

## Contributing

Everyone is freely to collaborate, just make sure you follow our [code of conduct](https://github.com/gueils/belugas-python/blob/master/CODE_OF_CONDUCT.md). Thank you [contributors](https://github.com/gueils/belugas-python/graphs/contributors)!

### Create an Issue

Find a bug and don't know how to fix it? Have trouble following the documentation or have a question about the project? Then by all means, please [create an issue](https://github.com/gueils/belugas-python/issues/new).

Just please make sure you check [existing issues](https://github.com/gueils/belugas-python/issues) to see if what you're running into has been addressed already.

### Submit a Pull Request

That's great! Just follow this steps:

1. Create a separate branch for your edits
2. Make sure your changes doesn't break the project by running your changes against current specs. **We love tests!** so it'll be even better if you create new ones when needed
3. Open your pull request against `master`

Once you've created a pull request, mainteners will chime in to review your proposed changes and to merged it if everything is right :tada:

### I want to contribute but don't know where to start

That's great also! We already have some [open issues](https://github.com/gueils/belugas-python/issues) for you to dive in.

## Copyright

See [LICENSE](https://github.com/gueils/belugas-python/blob/master/LICENSE.txt)

![Icalia Labs](https://raw.githubusercontent.com/icalialabs/kaishi/master/logo.png)

Belugas-Python is maintained by [Icalia Labs](http://www.icalialabs.com/team)
