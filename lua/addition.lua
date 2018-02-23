local args = ngx.req.get_uri_args()
ngx.print("main", args.a + args.b)
ngx.log(ngx.ERR, "main")
-- ngx.flush() -- 显式的向客户端刷新响应输出
--ngx.sleep(5)
-- 子请求
local response = ngx.location.capture('/api/division',
     { args = { a = 3, b = 100} }
)
-- ngx.say(json.encode(response["body"]));

ngx.say("");

ngx.say(response["body"]);
