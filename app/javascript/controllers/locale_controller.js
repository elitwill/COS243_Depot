/***
 * Excerpted from "Agile Web Development with Rails 7",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material,
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose.
 * Visit https://pragprog.com/titles/rails7 for more book information.
***/
import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="locale"
export default class extends Controller {
  static targets = [ "submit" ]

  initialize() {
    this.submitTarget.style.display = 'none'
  }
}