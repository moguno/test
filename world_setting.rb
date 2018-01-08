Plugin.create(:test) {
  world_setting(:test, _("test")) {
    input(_("user"), :user)
    input(_("password"), :password)

    result = await_input

    world = Plugin::Test::World.new({
      :icon => Plugin.filtering(:photo_filter, "https://www.wunderlist.com/site/images/favicon.ico", []).last.first,
    }.merge(result.to_h))

    world
  }
}
