import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  refresh(event) {
  //   fetch('/packet', { headers: { accept: "application/json" } })
  //     .then(response => response.json())
  //     .then((data) => {
  //       this.countTarget.innerText = data.
  //     });
  // }
 
  const id = event.target.dataset.indexNumber

  $.ajax({
    url: `/packets/${id}/add_vote`,
    method: "GET",
  });
  }
}