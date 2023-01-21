package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["StreamSource"] = "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
	c.Data["Email"] = "nino.bozzi@gmail.com"
	c.TplName = "player.tpl"
}
