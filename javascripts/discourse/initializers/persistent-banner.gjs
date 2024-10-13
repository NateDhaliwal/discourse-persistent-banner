import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";
import { inject as service } from "@ember/service";
import { htmlSafe } from "@ember/template";
import { apiInitializer } from "discourse/lib/api";

console.log(settings.banner_position)


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
          {{#if bannerIsFilled}}
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
