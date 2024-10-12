import Component from "@glimmer/component";

export default class persistentbanner extends Component {
  get bannerIsFilled() {
    if (settings.banner_text_content == "") or (settings.banner_visible == "hide") {
      return false;
    } else {
      return true;
    }
  }
}
