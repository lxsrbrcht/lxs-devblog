import { Controller } from '@hotwired/stimulus'
import EditorJS from '@editorjs/editorjs'

// Connects to data-controller="editor"
export default class extends Controller {
  static targets = ['post_content'];

  connect() {
    console.log("Editor controller connected", this.element);

    this.contentEditor = new EditorJS({
      holder: this.post_contentTarget,
    });
  }
}
