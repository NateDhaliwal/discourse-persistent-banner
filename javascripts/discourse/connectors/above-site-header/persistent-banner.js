import Component from "@glimmer/component";
import { inject as service } from "@ember/service";

export default class persistentbanner extends Component {
  get bannerIsFilled() {
    if (settings.banner_text_content == "") {
      return False;
    } else {
      return True;
    }
  }
}
