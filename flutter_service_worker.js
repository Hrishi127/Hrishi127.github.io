'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "57c445ddd342d01a317b039b56cb6e05",
"version.json": "4dfc7510fa124b6299c9edc4f65f6884",
"index.html": "e0a026406ec811c454a3d874e3bf0ee4",
"/": "e0a026406ec811c454a3d874e3bf0ee4",
"main.dart.js": "3e42bc9b9d0c4d01e058c4b4d3bbe865",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-192.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-maskable-192.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-maskable-512.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-512.png": "181402829826fafa28c5c34e1705536e",
"manifest.json": "c7a72c719defaf06042dd39264349484",
"assets/AssetManifest.json": "4a6391c7fde57e72e10837e6d9cc9d08",
"assets/loading.gif": "38c885ac47ecc3503c4f99e870484cdf",
"assets/NOTICES": "f2553af5133a3302748386e88af48918",
"assets/FontManifest.json": "0978c56c4fb0409745f21dc6ffb31062",
"assets/AssetManifest.bin.json": "ba9f291fcab57a882772f495b934522f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "ee7817c0d5b66c4d3b6ba49e795bd92f",
"assets/fonts/MaterialIcons-Regular.otf": "8beafe4698cb18ce61c4968b4d3f14b2",
"assets/assets/images/yt.png": "d337e86234003f84a90624e9a34727c9",
"assets/assets/images/as.png": "bb7264c4e22d66bcdbccd4a41dfb1a36",
"assets/assets/images/ad.png": "a94402f286cde0542b60052d8a82cb92",
"assets/assets/images/tr.png": "24523a8731ca1d733060b655c5897f88",
"assets/assets/images/apps.png": "52cae17dab23953c9b52226b4968b630",
"assets/assets/images/at.png": "32e671b3b209b83a755192ab2e5a05cc",
"assets/assets/images/ab.png": "35f888c1814a5c103dada2f828789d48",
"assets/assets/images/cppc.png": "7f2b3c4cdce49df9ff453fca8f50f852",
"assets/assets/images/jc.png": "71919052274aadc38039315097767230",
"assets/assets/images/jv.png": "3df562a6771b58de2486d017607de3b9",
"assets/assets/images/gp.png": "8412cc2c8fb288c9c3cb9063e2e2aa11",
"assets/assets/images/fc.png": "ba99689e961a7fcd20e4ac5a95c634e3",
"assets/assets/images/sg.png": "8b5f07feccb0ffe305ad95339f6a7cd9",
"assets/assets/images/sp.png": "d6780602ccb20ad5601a9a45873da900",
"assets/assets/images/kt.png": "1997855fbb6b6b37ca8a5606cec46d97",
"assets/assets/images/itp.png": "55c41c3a6b6a195d86c2a8e45ebdeaff",
"assets/assets/images/ig.png": "4920f506094be260940d10e12214f797",
"assets/assets/images/hc.png": "963b5b876502515534744f92cf8ae917",
"assets/assets/images/ir.png": "e5408d8e957e83716329a33238c223a8",
"assets/assets/images/qc.png": "a993bfa299b4d117de881521c82c63fd",
"assets/assets/images/pg.png": "999c8cca709b662398cf3c69f460b9eb",
"assets/assets/images/pc.png": "63b9785ffecff26c21dfa847472f0b99",
"assets/assets/images/fl.png": "b464225801f494fae9d91e9d2d564328",
"assets/assets/images/ic.png": "d2d49e100238b1702645e93a4d4a4f0e",
"assets/assets/images/bc.png": "4e9c8311d45483447dee77697fd47ce1",
"assets/assets/images/bw.png": "af6869c6db3d8aa33da42c36c010d837",
"assets/assets/images/bs.png": "59aad62ee0f5d17e84b9f12a92e292a8",
"assets/assets/images/tk.png": "cb13a16d0ac146b2016351135f32f679",
"assets/assets/images/csc.png": "b5b5c62640bff34276e8daec564984fb",
"assets/assets/images/cc.png": "87106277696a01e2160f78e7b6fc6835",
"assets/assets/loading.gif": "38c885ac47ecc3503c4f99e870484cdf",
"assets/assets/logo.png": "6620490e3c6dc776f59a3ffe81a2799e",
"assets/assets/logo2.png": "181402829826fafa28c5c34e1705536e",
"assets/assets/fonts/anvaysoft.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/animations/products.json": "1acb60dea9ca89654461b6958f8b037a",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
