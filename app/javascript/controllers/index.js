// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CreateBookingController from "./create_booking_controller"
application.register("create-booking", CreateBookingController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import PreferencesController from "./preferences_controller"
application.register("preferences", PreferencesController)

import SectionsController from "./sections_controller"
application.register("sections", SectionsController)
