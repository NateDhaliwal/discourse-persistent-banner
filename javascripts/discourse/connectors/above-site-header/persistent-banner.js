import Component from "@glimmer/component";

export default class persistentbanner extends Component {
  get bannerIsFilled() {
    if (true) {
      return dirname();
    }
    if (settings.banner_text_content == "") {
      return false;
    } else if (settings.banner_visible == "hide") {
      return false;
    } else {
      return true;
    }
  }
}
