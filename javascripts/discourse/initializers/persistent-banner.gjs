import Component from "@glimmer/component";
import { apiInitializer } from "discourse/lib/api";
import { htmlSafe } from "@ember/template";

export default apiInitializer("1.14.0", (api) => {
  try {
    const banner_plugin_outlet = settings.banner_position
    api.renderInOutlet(
      banner_plugin_outlet,
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
        get bannerTextContent() {
          return settings.banner_text_content;
        }
        <template>
          {{#if this.bannerIsFilled}}
            <div class='persistent-banner'>
              <p>
                {{htmlSafe this.bannerTextContent}}
              </p>
            </div>
          {{/if}}
        </template>
      } 
    );
  } catch (e) {
    console.log(e);
  }
});
