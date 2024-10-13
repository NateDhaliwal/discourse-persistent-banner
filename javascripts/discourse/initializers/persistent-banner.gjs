import Component from "@glimmer/component";
import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.14.0", (api) => {
  api.renderInOutlet(
    settings.banner_position,
    class persistentbanner extends Component {
      get bannerIsFilled() {
        if (settings.banner_text_content == "") {
          return false;
        } else if (settings.banner_visible == "hide") {
          return false;
        } else {
          return true;
        }
      }
    }
  );
}
