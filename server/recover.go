package server

import (
	"fmt"

	"github.com/labstack/echo/v4"
	"go.uber.org/zap"
)

func RecoverMiddleware(l *zap.Logger, next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		defer func() {
			if r := recover(); r != nil {
				err, ok := r.(error)
				if !ok {
					err = fmt.Errorf("%v", r)
				}
				l.Error("Middleware PANIC RECOVER", zap.Error(err))

				c.Error(err)
			}
		}()
		return next(c)
	}
}