import Component from "@glimmer/component";
import { htmlSafe } from "@ember/template";
import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.14.0", (api) => {
  try {
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
