let setJson: (string, Js.Json.t) => unit;

let setString: (string, string) => unit;

let getAsString: string => option(string);

let getAsJson: string => option(Js.Json.t);