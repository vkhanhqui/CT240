package main

import (
	"proof-of-work/app"
	trans "proof-of-work/transport"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.StaticFile("/", "./transport/index.html")

	cache, err := app.ConnectRedis("localhost", 6379, "")
	if err != nil {
		panic(err)
	}

	issuesGroup := r.Group("/issues")
	svc := app.NewPowSvc(cache)
	trans.NewPowRouter(issuesGroup, svc)

	r.Run("localhost:8000")
}
