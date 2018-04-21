# ReasonCookie

a simple way to use cross-browser cookies that contain JSON.

Note this wrapps [js-cookie](https://github.com/js-cookie/js-cookie)

# Install

```
npm install --save @justgage/reason-cookie
```

Then in your `bsconfig.json`.

```
  "bs-dependencies": ["@justgage/reason-cookie"],
```

# API

### Working with string values

```reason
Cookie.getAsString("hello") /* None */
Cookie.setString("hello", "test");
Cookie.getAsString("hello") /* Some("test") */
```

### working JSON

```reason
let obj = Js.Dict.empty();
Js.Dict.set(obj, "a", Js.Json.number(2.));
let obj = Js.Json.object_(obj);

Cookie.setJson("hello", obj);

let maybeCookie = Cookie.getAsJson("hello");
```

### set path/expiry

_expires_: number of days
_path_: where this is valid for

```reason
Cookie.setJsonConfig(
  "hello",
  obj,
  Cookie.makeConfig(~path="", ~expires=2, ()),
);
```
