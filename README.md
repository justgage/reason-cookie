# ReasonCookie

a simple way to use cross-browser cookies that contain JSON.

Note this wrapps [js-cookie](https://github.com/js-cookie/js-cookie)

# Is it ready for prime time?

I use it on my side project. The library that's wrapped is pretty battle tested.

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

* **expires**: number of days
* **path**: where this is valid for

```reason
Cookie.setJsonConfig(
  "hello",
  obj,
  Cookie.makeConfig(~path="", ~expires=2, ()),
);
```
