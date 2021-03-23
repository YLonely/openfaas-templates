package handler

import (
	"net/http"
	"time"

	beegoctx "github.com/beego/beego/v2/server/web/context"
)

func Handle(w *beegoctx.Response, r *http.Request) error {
	//TODO: handle the request
	w.Write([]byte(time.Now().String()))
	return nil
}

func Initial() {
	return
}
