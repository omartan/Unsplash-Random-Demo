# Unsplash Random Demo

A simple single page application to learn the concepts of design patterns like MVC and MVVM (work in progress) using Unsplash API.

![Unsplash Random Demo Gif](https://res.cloudinary.com/omar2017/image/upload/v1599185499/Screen_Recording_2020-09-04_at_10.03.47.2020-09-04_10_10_09_k09c3b.gif)

# How to use

1. Create a [Unsplash developer account](https://unsplash.com/developers) if you don't have it yet.

2. Open `ViewController.swift` and replace the word **REPLACE-WITH-ACCESS-KEY** at `urlRequest.setValue("Client-ID REPLACE-WITH-ACCESS-KEY", forHTTPHeaderField: "Authorization")` with the access key provided by your developer account at Unsplash.

# What is design pattern?

Design pattern is essentially structuring code in a way that is universally understandable by programmers as this allows people to work collaboratively better and to solve a commonly occuring problem in the context of software design.

# What is MVC?

Stands for Model-View-Controller is one of the most design pattern when it comes to iOS Programming, it's also the easiest design pattern for a beginner to pick up. Each component is built to handle specific development aspect of an application.

![MVC Image](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Art/model_view_controller_2x.png)

*[Apple MVC Documentation](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html)*

# What is MVVM?

Stands for Model-View-ViewModel. Is an evolution from MVC, but don't make the mistake thinking the C is replaced with the VM as it's a bit more then that.

![MVVM Image](https://koenig-media.raywenderlich.com/uploads/2019/12/MVVM-Diagram.png)

*[Raywenderlich MVVM diagram](https://www.raywenderlich.com/6733535-ios-mvvm-tutorial-refactoring-from-mvc)*

In an MVVM Design Pattern, the ViewController that is found in every iOS project is placed under the View component (unlike in MVC, where it's placed in the Controller component).

This allows the ViewController to be more focused to only contain view related logic and any other logic is is moved to the ViewModel.

The main benefit of the ViewModel is it allows to do easier tests, however to "link" the ViewModel to the View, you'll need to learn binding that has a few ways of doing it based on the project needs and complexity.
