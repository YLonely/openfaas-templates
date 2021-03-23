package main

import (
	"log"

	"github.com/YLonely/decompressor/handler"
	"github.com/beego/beego/v2/server/web"
)

type mainController struct {
	web.Controller
}

func (c *mainController) Post() {
	if err := handler.Handle(c.Ctx.ResponseWriter, c.Ctx.Request); err != nil {
		log.Println(err)
	}
}

func (c *mainController) Get() {
	c.Ctx.WriteString("OK")
}

func main() {
	handler.Initial()
	web.Router("/", &mainController{})
	web.Router("/_/health", &mainController{})
	web.Run("127.0.0.1:8080")
}
