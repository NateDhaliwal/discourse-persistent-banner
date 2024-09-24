import Component from "@glimmer/component";

export default class persistentbanner extends Component {
  get bannerIsFilled() {
    if (settings.banner_text_content == "") {
      return false;
    } else {
      return true;
    }
  }
}
