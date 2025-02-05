import Component from "@glimmer/component";
import { apiInitializer } from "discourse/lib/api";
import { htmlSafe } from "@ember/template";

export default apiInitializer("1.14.0", (api) => {
  const banner_plugin_outlet = settings.banner_position
  api.renderInOutlet(
    banner_plugin_outlet,
    class persistentbanner extends Component {
      get bannerTextContent() {
        return settings.banner_text_content;
      }
      <template>
        <div class='persistent-banner'>
          <p>
            {{htmlSafe this.bannerTextContent}}
          </p>
        </div>
      </template>
    } 
  );
});
