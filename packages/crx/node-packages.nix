# This file has been generated by node2nix 1.11.1. Do not edit!

{
  nodeEnv,
  fetchurl,
  fetchgit,
  nix-gitignore,
  stdenv,
  lib,
  globalBuildInputs ? [ ],
  fetchFromGitHub,
}:

let
  sources = {
    "archiver-4.0.2" = {
      name = "archiver";
      packageName = "archiver";
      version = "4.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/archiver/-/archiver-4.0.2.tgz";
        sha512 = "B9IZjlGwaxF33UN4oPbfBkyA4V1SxNLeIhR1qY8sRXSsbdUkEHrrOvwlYFPx+8uQeCe9M+FG6KgO+imDmQ79CQ==";
      };
    };
    "archiver-utils-2.1.0" = {
      name = "archiver-utils";
      packageName = "archiver-utils";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/archiver-utils/-/archiver-utils-2.1.0.tgz";
        sha512 = "bEL/yUb/fNNiNTuUz979Z0Yg5L+LzLxGJz8x79lYmR54fmTIb6ob/hNQgkQnIUDWIFjZVQwl9Xs356I6BAMHfw==";
      };
    };
    "asn1-0.2.4" = {
      name = "asn1";
      packageName = "asn1";
      version = "0.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/asn1/-/asn1-0.2.4.tgz";
        sha512 = "jxwzQpLQjSmWXgwaCZE9Nz+glAG01yF1QnWgbhGwHI5A6FRIEY6IVqtHhIepHqI7/kyEyQEagBC5mBEFlIYvdg==";
      };
    };
    "async-3.2.1" = {
      name = "async";
      packageName = "async";
      version = "3.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/async/-/async-3.2.1.tgz";
        sha512 = "XdD5lRO/87udXCMC9meWdYiR+Nq6ZjUfXidViUZGu2F1MO4T3XwZ1et0hb2++BgLfhyJwy44BGB/yx80ABx8hg==";
      };
    };
    "balanced-match-1.0.2" = {
      name = "balanced-match";
      packageName = "balanced-match";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
        sha512 = "3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
      };
    };
    "base64-js-1.5.1" = {
      name = "base64-js";
      packageName = "base64-js";
      version = "1.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/base64-js/-/base64-js-1.5.1.tgz";
        sha512 = "AKpaYlHn8t4SVbOHCy+b5+KKgvR4vrsD8vbvrbiQJps7fKDTkjkDry6ji0rUJjC0kzbNePLwzxq8iypo41qeWA==";
      };
    };
    "bl-4.1.0" = {
      name = "bl";
      packageName = "bl";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bl/-/bl-4.1.0.tgz";
        sha512 = "1W07cM9gS6DcLperZfFSj+bWLtaPGSOHWhPiGzXmvVJbRLdG82sH/Kn8EtW1VqWVA54AKf2h5k5BbnIbwF3h6w==";
      };
    };
    "brace-expansion-1.1.11" = {
      name = "brace-expansion";
      packageName = "brace-expansion";
      version = "1.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha512 = "iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==";
      };
    };
    "buffer-5.7.1" = {
      name = "buffer";
      packageName = "buffer";
      version = "5.7.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer/-/buffer-5.7.1.tgz";
        sha512 = "EHcyIPBQ4BSGlvjB16k5KgAJ27CIsHY/2JBmCRReo48y9rQ3MaUzWX3KVlBa4U7MyX02HdVj0K7C3WaB3ju7FQ==";
      };
    };
    "buffer-crc32-0.2.13" = {
      name = "buffer-crc32";
      packageName = "buffer-crc32";
      version = "0.2.13";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
        sha1 = "0d333e3f00eac50aa1454abd30ef8c2a5d9a7242";
      };
    };
    "commander-2.20.3" = {
      name = "commander";
      packageName = "commander";
      version = "2.20.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.20.3.tgz";
        sha512 = "GpVkmM8vF2vQUkj2LvZmD35JxeJOLCwJ9cUkugyk2nuhbv3+mJvpLYYt+0+USMxE+oj+ey/lJEnhZw75x/OMcQ==";
      };
    };
    "compress-commons-3.0.0" = {
      name = "compress-commons";
      packageName = "compress-commons";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/compress-commons/-/compress-commons-3.0.0.tgz";
        sha512 = "FyDqr8TKX5/X0qo+aVfaZ+PVmNJHJeckFBlq8jZGSJOgnynhfifoyl24qaqdUdDIBe0EVTHByN6NAkqYvE/2Xg==";
      };
    };
    "concat-map-0.0.1" = {
      name = "concat-map";
      packageName = "concat-map";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    };
    "core-util-is-1.0.2" = {
      name = "core-util-is";
      packageName = "core-util-is";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    };
    "crc-3.8.0" = {
      name = "crc";
      packageName = "crc";
      version = "3.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/crc/-/crc-3.8.0.tgz";
        sha512 = "iX3mfgcTMIq3ZKLIsVFAbv7+Mc10kxabAGQb8HvjA1o3T1PIYprbakQ65d3I+2HGHt6nSKkM9PYjgoJO2KcFBQ==";
      };
    };
    "crc32-stream-3.0.1" = {
      name = "crc32-stream";
      packageName = "crc32-stream";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/crc32-stream/-/crc32-stream-3.0.1.tgz";
        sha512 = "mctvpXlbzsvK+6z8kJwSJ5crm7yBwrQMTybJzMw1O4lLGJqjlDCXY2Zw7KheiA6XBEcBmfLx1D88mjRGVJtY9w==";
      };
    };
    "end-of-stream-1.4.4" = {
      name = "end-of-stream";
      packageName = "end-of-stream";
      version = "1.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.4.tgz";
        sha512 = "+uw1inIHVPQoaVuHzRyXd21icM+cnt4CzD5rW+NC1wjOUSTOs+Te7FOv7AhN7vS9x/oIyhLP5PR1H+phQAHu5Q==";
      };
    };
    "fs-constants-1.0.0" = {
      name = "fs-constants";
      packageName = "fs-constants";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs-constants/-/fs-constants-1.0.0.tgz";
        sha512 = "y6OAwoSIf7FyjMIv94u+b5rdheZEjzR63GTyZJm5qh4Bi+2YgwLCcI/fPFZkL5PSixOt6ZNKm+w+Hfp/Bciwow==";
      };
    };
    "fs.realpath-1.0.0" = {
      name = "fs.realpath";
      packageName = "fs.realpath";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    };
    "glob-7.1.7" = {
      name = "glob";
      packageName = "glob";
      version = "7.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-7.1.7.tgz";
        sha512 = "OvD9ENzPLbegENnYP5UUfJIirTg4+XwMWGaQfQTY0JenxNvvIKP3U3/tAQSPIu/lHxXYSZmpXlUHeqAIdKzBLQ==";
      };
    };
    "graceful-fs-4.2.8" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.2.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.8.tgz";
        sha512 = "qkIilPUYcNhJpd33n0GBXTB1MMPp14TxEsEs0pTrsSVucApsYzW5V+Q8Qxhik6KU3evy+qkAAowTByymK0avdg==";
      };
    };
    "ieee754-1.2.1" = {
      name = "ieee754";
      packageName = "ieee754";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ieee754/-/ieee754-1.2.1.tgz";
        sha512 = "dcyqhDvX1C46lXZcVqCpK+FtMRQVdIMN6/Df5js2zouUsqG7I6sFxitIC+7KYK29KdXOLHdu9zL4sFnoVQnqaA==";
      };
    };
    "inflight-1.0.6" = {
      name = "inflight";
      packageName = "inflight";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    };
    "inherits-2.0.4" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      };
    };
    "isarray-1.0.0" = {
      name = "isarray";
      packageName = "isarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    };
    "lazystream-1.0.0" = {
      name = "lazystream";
      packageName = "lazystream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lazystream/-/lazystream-1.0.0.tgz";
        sha1 = "f6995fe0f820392f61396be89462407bb77168e4";
      };
    };
    "lodash.defaults-4.2.0" = {
      name = "lodash.defaults";
      packageName = "lodash.defaults";
      version = "4.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.defaults/-/lodash.defaults-4.2.0.tgz";
        sha1 = "d09178716ffea4dde9e5fb7b37f6f0802274580c";
      };
    };
    "lodash.difference-4.5.0" = {
      name = "lodash.difference";
      packageName = "lodash.difference";
      version = "4.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.difference/-/lodash.difference-4.5.0.tgz";
        sha1 = "9ccb4e505d486b91651345772885a2df27fd017c";
      };
    };
    "lodash.flatten-4.4.0" = {
      name = "lodash.flatten";
      packageName = "lodash.flatten";
      version = "4.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.flatten/-/lodash.flatten-4.4.0.tgz";
        sha1 = "f31c22225a9632d2bbf8e4addbef240aa765a61f";
      };
    };
    "lodash.isplainobject-4.0.6" = {
      name = "lodash.isplainobject";
      packageName = "lodash.isplainobject";
      version = "4.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz";
        sha1 = "7c526a52d89b45c45cc690b88163be0497f550cb";
      };
    };
    "lodash.union-4.6.0" = {
      name = "lodash.union";
      packageName = "lodash.union";
      version = "4.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.union/-/lodash.union-4.6.0.tgz";
        sha1 = "48bb5088409f16f1821666641c44dd1aaae3cd88";
      };
    };
    "minimatch-3.0.4" = {
      name = "minimatch";
      packageName = "minimatch";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz";
        sha512 = "yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==";
      };
    };
    "node-rsa-1.1.1" = {
      name = "node-rsa";
      packageName = "node-rsa";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-rsa/-/node-rsa-1.1.1.tgz";
        sha512 = "Jd4cvbJMryN21r5HgxQOpMEqv+ooke/korixNNK3mGqfGJmy0M77WDDzo/05969+OkMy3XW1UuZsSmW9KQm7Fw==";
      };
    };
    "normalize-path-3.0.0" = {
      name = "normalize-path";
      packageName = "normalize-path";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz";
        sha512 = "6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    };
    "path-is-absolute-1.0.1" = {
      name = "path-is-absolute";
      packageName = "path-is-absolute";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    };
    "pbf-3.2.1" = {
      name = "pbf";
      packageName = "pbf";
      version = "3.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pbf/-/pbf-3.2.1.tgz";
        sha512 = "ClrV7pNOn7rtmoQVF4TS1vyU0WhYRnP92fzbfF75jAIwpnzdJXf8iTd4CMEqO4yUenH6NDqLiwjqlh6QgZzgLQ==";
      };
    };
    "process-nextick-args-2.0.1" = {
      name = "process-nextick-args";
      packageName = "process-nextick-args";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz";
        sha512 = "3ouUOpQhtgrbOa17J7+uxOTpITYWaGP7/AhoR3+A+/1e9skrzelGi/dXzEYyvbxubEF6Wn2ypscTKiKJFFn1ag==";
      };
    };
    "protocol-buffers-schema-3.5.2" = {
      name = "protocol-buffers-schema";
      packageName = "protocol-buffers-schema";
      version = "3.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/protocol-buffers-schema/-/protocol-buffers-schema-3.5.2.tgz";
        sha512 = "LPzSaBYp/TcbuSlpGwqT5jR9kvJ3Zp5ic2N5c2ybx6XB/lSfEHq2D7ja8AgoxHoMD91wXFALJoXsvshKPuXyew==";
      };
    };
    "readable-stream-2.3.7" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "2.3.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz";
        sha512 = "Ebho8K4jIbHAxnuxi7o42OrZgF/ZTNcsZj6nRKyUmkhLFq8CHItp/fy6hQZuZmP/n3yZ9VBUbp4zz/mX8hmYPw==";
      };
    };
    "readable-stream-3.6.0" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "3.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-3.6.0.tgz";
        sha512 = "BViHy7LKeTz4oNnkcLJ+lVSL6vpiFeX6/d3oSH8zCW7UxP2onchk+vTGB143xuFjHS3deTgkKoXXymXqymiIdA==";
      };
    };
    "resolve-protobuf-schema-2.1.0" = {
      name = "resolve-protobuf-schema";
      packageName = "resolve-protobuf-schema";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve-protobuf-schema/-/resolve-protobuf-schema-2.1.0.tgz";
        sha512 = "kI5ffTiZWmJaS/huM8wZfEMer1eRd7oJQhDuxeCLe3t7N7mX3z94CN0xPxBQxFYQTSNz9T0i+v6inKqSdK8xrQ==";
      };
    };
    "safe-buffer-5.1.2" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha512 = "Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==";
      };
    };
    "safe-buffer-5.2.1" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
        sha512 = "rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      };
    };
    "string_decoder-1.1.1" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz";
        sha512 = "n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==";
      };
    };
    "string_decoder-1.3.0" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.3.0.tgz";
        sha512 = "hkRX8U1WjJFd8LsDJ2yQ/wWWxaopEsABU1XfkM8A+j0+85JAGppt16cr1Whg6KIbb4okU6Mql6BOj+uup/wKeA==";
      };
    };
    "tar-stream-2.2.0" = {
      name = "tar-stream";
      packageName = "tar-stream";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/tar-stream/-/tar-stream-2.2.0.tgz";
        sha512 = "ujeqbceABgwMZxEJnk2HDY2DlnUZ+9oEcb1KzTVfYHio0UE6dG71n60d8D2I4qNvleWrrXpmjpt7vZeF1LnMZQ==";
      };
    };
    "util-deprecate-1.0.2" = {
      name = "util-deprecate";
      packageName = "util-deprecate";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    };
    "zip-stream-3.0.1" = {
      name = "zip-stream";
      packageName = "zip-stream";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/zip-stream/-/zip-stream-3.0.1.tgz";
        sha512 = "r+JdDipt93ttDjsOVPU5zaq5bAyY+3H19bDrThkvuVxC0xMQzU1PJcS6D+KrP3u96gH9XLomcHPb+2skoDjulQ==";
      };
    };
  };
  args = {
    name = "crx";
    packageName = "crx";
    version = "5.0.1";
    # src = ./.;
    src = fetchFromGitHub {
      owner = "thom4parisot";
      repo = "crx";
      rev = "23766455f8df72b3d13d3e72101fe632e052383c";
      hash = "sha256-33+YKeBBCIkxIv7cI0ldyxdBlStOyGi5uJEhgnI+nhs=";
    };
    dependencies = [
      sources."archiver-4.0.2"
      (
        sources."archiver-utils-2.1.0"
        // {
          dependencies = [
            sources."readable-stream-2.3.7"
            sources."string_decoder-1.1.1"
          ];
        }
      )
      sources."asn1-0.2.4"
      sources."async-3.2.1"
      sources."balanced-match-1.0.2"
      sources."base64-js-1.5.1"
      sources."brace-expansion-1.1.11"
      sources."buffer-5.7.1"
      sources."buffer-crc32-0.2.13"
      sources."commander-2.20.3"
      (
        sources."compress-commons-3.0.0"
        // {
          dependencies = [
            sources."readable-stream-2.3.7"
            sources."string_decoder-1.1.1"
          ];
        }
      )
      sources."concat-map-0.0.1"
      sources."core-util-is-1.0.2"
      sources."crc-3.8.0"
      sources."crc32-stream-3.0.1"
      sources."end-of-stream-1.4.4"
      sources."fs-constants-1.0.0"
      sources."fs.realpath-1.0.0"
      sources."glob-7.1.7"
      sources."graceful-fs-4.2.8"
      sources."ieee754-1.2.1"
      sources."inflight-1.0.6"
      sources."inherits-2.0.4"
      sources."isarray-1.0.0"
      (
        sources."lazystream-1.0.0"
        // {
          dependencies = [
            sources."readable-stream-2.3.7"
            sources."string_decoder-1.1.1"
          ];
        }
      )
      sources."lodash.defaults-4.2.0"
      sources."lodash.difference-4.5.0"
      sources."lodash.flatten-4.4.0"
      sources."lodash.isplainobject-4.0.6"
      sources."lodash.union-4.6.0"
      sources."minimatch-3.0.4"
      sources."node-rsa-1.1.1"
      sources."normalize-path-3.0.0"
      sources."once-1.4.0"
      sources."path-is-absolute-1.0.1"
      sources."pbf-3.2.1"
      sources."process-nextick-args-2.0.1"
      sources."protocol-buffers-schema-3.5.2"
      sources."readable-stream-3.6.0"
      sources."resolve-protobuf-schema-2.1.0"
      sources."safe-buffer-5.1.2"
      sources."safer-buffer-2.1.2"
      (
        sources."string_decoder-1.3.0"
        // {
          dependencies = [
            sources."safe-buffer-5.2.1"
          ];
        }
      )
      (
        sources."tar-stream-2.2.0"
        // {
          dependencies = [
            sources."bl-4.1.0"
          ];
        }
      )
      sources."util-deprecate-1.0.2"
      sources."wrappy-1.0.2"
      sources."zip-stream-3.0.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "crx is a utility to package Google Chrome extensions via a Node API and the command line";
      homepage = "https://github.com/oncletom/crx";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = false;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (
    lib.overrideExisting args {
      src = stdenv.mkDerivation {
        name = args.name + "-package-json";
        src = nix-gitignore.gitignoreSourcePure [
          "*"
          "!package.json"
          "!package-lock.json"
        ] args.src;
        dontBuild = true;
        installPhase = "mkdir -p $out; cp -r ./* $out;";
      };
    }
  );
}
