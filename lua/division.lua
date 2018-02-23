local args = ngx.req.get_uri_args()
ngx.say("sub", args.a / args.b)
ngx.log(ngx.ERR, "sub")
ngx.flush() -- 显式的向客户端刷新响应输出
ngx.sleep(2)
