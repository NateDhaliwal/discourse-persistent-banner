import Component from "@glimmer/component";

alert(settings.banner_text_content);
export default class persistentbanner extends Component {
  get bannerIsFilled() {
    if (settings.banner_text_content == "") {
      return False;
    } else {
      return True;
    }
  }
}
