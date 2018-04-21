# ReasonCookie

a simple way to use cross-browser cookies that contain JSON.

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
Cookie.setString("hello", "test");
Cookie.getAsString("hello")
```

### working JSON

```reason
let obj = Js.Dict.empty();
Js.Dict.set(obj, "a", Js.Json.number(2.));
let obj = Js.Json.object_(obj);

Cookie.setJson("hello", obj);

Cookie.getAsJson("hello") |> expect |> toEqual(Some(obj));
```

### set path/expiry

*expires*: number of days
*path*: where this is valid for

```reason

Cookie.setJsonConfig(
  "hello",
  obj,
  Cookie.makeConfig(~path="", ~expires=2, ()),
);
```


