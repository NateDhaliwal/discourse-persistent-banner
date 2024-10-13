import Component from "@glimmer/component";
import { apiInitializer } from "discourse/lib/api";

banner_plugin_outlet = settings.banner_location

export default apiInitializer("1.14.0", (api) => {
  try {
    banner_plugin_outlet = settings.banner_location
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
        <template>
          {{#if this.bannerIsFilled}}
            <div class='persistent-banner'>
              <p>
                {{html_safe (theme-setting 'banner_text_content')}}
              </p>
            </div>
          {{/if}}
        </template>
      } 
    );
  } catch (e) {
    console.log(e);
  }
}
